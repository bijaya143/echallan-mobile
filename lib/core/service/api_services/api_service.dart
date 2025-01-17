import 'dart:async';
import 'package:dio/dio.dart';
import 'package:echalan/core/constants/api_constants.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';

/// Custom exception class for API errors
class ApiException implements Exception {

  ApiException({
    required this.message,
    this.statusCode,
    this.error,
  });
  final String message;
  final int? statusCode;
  final dynamic error;

  @override
  String toString() => 'ApiException: $message';
}

/// Model for authentication tokens
class AuthTokens {

  AuthTokens({required this.accessToken, required this.refreshToken});

  factory AuthTokens.fromJson(Map<String, dynamic> json) {
    return AuthTokens(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );
  }
  final String accessToken;
  final String refreshToken;

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'refresh_token': refreshToken,
    };
  }
}

/// Configuration for API endpoints
class ApiConfig {
  static const String baseUrl = String.fromEnvironment(
    ApiEndpoint.BASE_URL,
    defaultValue: ApiEndpoint.BASE_URL,
  );

  static const Duration timeoutDuration = Duration(seconds: 30);
  static const String authHeaderKey = 'Authorization';
  static const String bearerPrefix = 'Bearer';
}

/// Service responsible for handling all API communications
@singleton
class ApiService {

  ApiService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: ApiConfig.timeoutDuration,
        receiveTimeout: ApiConfig.timeoutDuration,
        sendTimeout: ApiConfig.timeoutDuration,
        headers: const {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );

    // _fresh = Fresh<AuthTokens>(
    //   tokenStorage: InMemoryTokenStorage(),
    //   refreshToken: (token, client) => _refreshToken(token),
    //   shouldRefresh: _shouldRefreshToken,
    //   tokenHeader: _buildAuthHeader,
    // );

    _setupInterceptors();
  }
  late final Dio _dio;
  late final Fresh<AuthTokens> _fresh;

  bool _shouldRefreshToken(Response? response) => response?.statusCode == 401;

  Map<String, String> _buildAuthHeader(AuthTokens token) => {
    ApiConfig.authHeaderKey:
    '${ApiConfig.bearerPrefix} ${token.accessToken}',
  };

  void _setupInterceptors() {
    _dio.interceptors.addAll([
      _fresh,
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (object) {
          debugPrint('API Log: $object'); // Using Flutter's debugPrint
        },
      ),
    ]);
  }

  /// Refresh token implementation
  // Future<AuthTokens> _refreshToken(AuthTokens? tokens) async {
  //   try {
  //     if (tokens?.refreshToken == null) throw Exception('No refresh token');
  //
  //     final response = await _dio.post(
  //       '/auth/refresh',
  //       data: {'refresh_token': tokens?.refreshToken},
  //     );
  //
  //     if (response.statusCode == 200) {
  //       return AuthTokens.fromJson(response.data);
  //     }
  //     throw Exception('Failed to refresh token');
  //   } catch (e) {
  //     await _fresh.clearToken();
  //     throw Exception('Failed to refresh token');
  //   }
  // }

  /// Generic request handler with error handling
  Future<T> _handleRequest<T>({
    required Future<Response> Function() requestFunction,
    required T Function(dynamic data) parseResponse,
  }) async {
    try {
      final response = await requestFunction();
      return parseResponse(response.data);
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw ApiException(
        message: 'Unexpected error occurred',
        error: e,
      );
    }
  }

  /// Handle Dio specific errors
  ApiException _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ApiException(
          message: 'Connection timeout',
          statusCode: error.response?.statusCode,
          error: error,
        );
      case DioExceptionType.badResponse:
        return ApiException(
          message: _getErrorMessage(error.response?.data),
          statusCode: error.response?.statusCode,
          error: error,
        );
      case DioExceptionType.connectionError:
        return ApiException(
          message: 'No internet connection',
          statusCode: error.response?.statusCode,
          error: error,
        );
      default:
        return ApiException(
          message: 'Something went wrong',
          statusCode: error.response?.statusCode,
          error: error,
        );
    }
  }

  String _getErrorMessage(dynamic errorData) {
    if (errorData is Map) {
      return  'Unknown error occurred';
    }
    return 'Unknown error occurred';
  }

  // Public API methods

  /// Set authentication tokens
  Future<void> setTokens(AuthTokens tokens) async {
    await _fresh.setToken(tokens);
  }

  /// Clear authentication tokens
  Future<void> clearTokens() async {
    await _fresh.clearToken();
  }

  /// GET request
  Future<T> get<T>({
    required String endpoint,
    required T Function(dynamic data) parseResponse, Map<String, dynamic>? queryParameters,
  }) async {
    return _handleRequest(
      requestFunction: () => _dio.get(
        endpoint,
        queryParameters: queryParameters,
      ),
      parseResponse: parseResponse,
    );
  }

  /// POST request
  Future<T> post<T>({
    required String endpoint,
    required T Function(dynamic data) parseResponse, dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _handleRequest(
      requestFunction: () => _dio.post(
        endpoint,
        data: data,
        queryParameters: queryParameters,
      ),
      parseResponse: parseResponse,
    );
  }

  /// PUT request
  Future<T> put<T>({
    required String endpoint,
    required T Function(dynamic data) parseResponse, dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _handleRequest(
      requestFunction: () => _dio.put(
        endpoint,
        data: data,
        queryParameters: queryParameters,
      ),
      parseResponse: parseResponse,
    );
  }

  /// DELETE request
  Future<T> delete<T>({
    required String endpoint,
    required T Function(dynamic data) parseResponse, Map<String, dynamic>? queryParameters,
  }) async {
    return _handleRequest(
      requestFunction: () => _dio.delete(
        endpoint,
        queryParameters: queryParameters,
      ),
      parseResponse: parseResponse,
    );
  }

  /// PATCH request
  Future<T> patch<T>({
    required String endpoint,
    required T Function(dynamic data) parseResponse, dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _handleRequest(
      requestFunction: () => _dio.patch(
        endpoint,
        data: data,
        queryParameters: queryParameters,
      ),
      parseResponse: parseResponse,
    );
  }

  /// Upload file(s)
  Future<T> uploadFiles<T>({
    required String endpoint,
    required List<MultipartFile> files,
    required T Function(dynamic data) parseResponse, Map<String, dynamic>? additionalData,
  }) async {
    final formData = FormData();

    for (final file in files) {
      formData.files.add(MapEntry('files', file));
    }

    if (additionalData != null) {
      additionalData.forEach((key, value) {
        formData.fields.add(MapEntry(key, value.toString()));
      });
    }

    return _handleRequest(
      requestFunction: () => _dio.post(
        endpoint,
        data: formData,
      ),
      parseResponse: parseResponse,
    );
  }
}
