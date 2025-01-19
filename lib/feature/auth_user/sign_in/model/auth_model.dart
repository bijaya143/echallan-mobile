import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    required TokenDataModel token,
    required UserDataModel user,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}

@freezed
class TokenDataModel with _$TokenDataModel {
  const factory TokenDataModel({
    required String type,
    required String accessToken,
  }) = _TokenDataModel;

  factory TokenDataModel.fromJson(Map<String, dynamic> json) =>
      _$TokenDataModelFromJson(json);
}

@freezed
class UserDataModel with _$UserDataModel {
  const factory UserDataModel({
    required String id,
    required String phone,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
