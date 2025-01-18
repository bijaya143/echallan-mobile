// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseModelImpl _$$AuthResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthResponseModelImpl(
      token: TokenDataModel.fromJson(json['token'] as Map<String, dynamic>),
      user: UserDataModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthResponseModelImplToJson(
        _$AuthResponseModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

_$TokenDataModelImpl _$$TokenDataModelImplFromJson(Map<String, dynamic> json) =>
    _$TokenDataModelImpl(
      type: json['type'] as String,
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$TokenDataModelImplToJson(
        _$TokenDataModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'accessToken': instance.accessToken,
    };

_$UserDataModelImpl _$$UserDataModelImplFromJson(Map<String, dynamic> json) =>
    _$UserDataModelImpl(
      id: json['id'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$UserDataModelImplToJson(_$UserDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
    };
