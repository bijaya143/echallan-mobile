import 'package:echalan/core/formz/password_formz.dart';
import 'package:echalan/core/formz/phone_number_formz.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/core/locator/locator.dart';
import 'package:echalan/core/service/api_services/api_service.dart';
import 'package:echalan/feature/auth_user/sign_in/model/auth_model.dart';
import 'package:echalan/route/app_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_cubit.freezed.dart';
part 'sign_in_state.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(const SignInState());
  final ApiService _apiService = di<ApiService>();

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void togglePassword() {
    emit(
      state.copyWith(
        isPasswordVisible: !state.isPasswordVisible,
      ),
    );
  }

  void onPhoneNumberChanged(String value) {
    final phoneNumber = PhoneNumberFormz.dirty(value.trim());
    emit(
      state.copyWith(
        phoneNumber: phoneNumber,
        error: '',
      ),
    );
  }

  void onPasswordChanged(String value) {
    final password = PasswordFormz.dirty(value);
    emit(
      state.copyWith(
        password: password,
      ),
    );
  }

  void clearTextControllers() {
    phoneController.clear();
    passwordController.clear();
    emit(
      state.copyWith(
        phoneNumber: const PhoneNumberFormz.pure(),
        password: const PasswordFormz.pure(),
      ),
    );
  }

  Future<void> signin({
    required String phone,
    required String password,
    required BuildContext context,
  }) async {
    try {
      emit(
        state.copyWith(
          isLoading: true,
          error: '',
        ),
      );

      final authResponse = await _apiService.post<AuthResponseModel>(
        data: {'phone': phone, 'password': password},
        endpoint: 'auth/login', // Base URL already includes /objects
        parseResponse: (data) {
          if (data is Map<String, dynamic>) {
            return AuthResponseModel.fromJson(data);
          }
          throw ApiException(message: 'Invalid response format');
        },
      );
      print('signin of the API: $authResponse');
      emit(
        state.copyWith(
          authResponse: authResponse,
          isLoading: false,
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login success'),
          backgroundColor: ColorConstants.successMessageColor,
        ),
      );
      // Navigate to the dashboard screen on successful sign-in
      await Navigator.pushReplacementNamed(
        context,
        AppRouter.authUserDashboardScreen,
      );
    } on ApiException catch (e) {
      emit(state.copyWith(
        error: e.message,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: 'An unexpected error occurred',
        isLoading: false,
      ));
    }
  }
}
