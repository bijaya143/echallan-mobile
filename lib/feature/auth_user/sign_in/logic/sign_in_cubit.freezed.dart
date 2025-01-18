// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInState {
  PasswordFormz get password => throw _privateConstructorUsedError;
  PhoneNumberFormz get phoneNumber => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isPasswordVisible => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  AuthResponseModel? get authResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {PasswordFormz password,
      PhoneNumberFormz phoneNumber,
      String? message,
      bool isLoading,
      bool isPasswordVisible,
      String? error,
      AuthResponseModel? authResponse});

  $AuthResponseModelCopyWith<$Res>? get authResponse;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? phoneNumber = null,
    Object? message = freezed,
    Object? isLoading = null,
    Object? isPasswordVisible = null,
    Object? error = freezed,
    Object? authResponse = freezed,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFormz,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      authResponse: freezed == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthResponseModelCopyWith<$Res>? get authResponse {
    if (_value.authResponse == null) {
      return null;
    }

    return $AuthResponseModelCopyWith<$Res>(_value.authResponse!, (value) {
      return _then(_value.copyWith(authResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PasswordFormz password,
      PhoneNumberFormz phoneNumber,
      String? message,
      bool isLoading,
      bool isPasswordVisible,
      String? error,
      AuthResponseModel? authResponse});

  @override
  $AuthResponseModelCopyWith<$Res>? get authResponse;
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? phoneNumber = null,
    Object? message = freezed,
    Object? isLoading = null,
    Object? isPasswordVisible = null,
    Object? error = freezed,
    Object? authResponse = freezed,
  }) {
    return _then(_$SignInStateImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFormz,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      authResponse: freezed == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel?,
    ));
  }
}

/// @nodoc

class _$SignInStateImpl extends _SignInState {
  const _$SignInStateImpl(
      {this.password = const PasswordFormz.pure(),
      this.phoneNumber = const PhoneNumberFormz.pure(),
      this.message = '',
      this.isLoading = false,
      this.isPasswordVisible = false,
      this.error = '',
      this.authResponse = null})
      : super._();

  @override
  @JsonKey()
  final PasswordFormz password;
  @override
  @JsonKey()
  final PhoneNumberFormz phoneNumber;
  @override
  @JsonKey()
  final String? message;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isPasswordVisible;
  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final AuthResponseModel? authResponse;

  @override
  String toString() {
    return 'SignInState(password: $password, phoneNumber: $phoneNumber, message: $message, isLoading: $isLoading, isPasswordVisible: $isPasswordVisible, error: $error, authResponse: $authResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.authResponse, authResponse) ||
                other.authResponse == authResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, phoneNumber, message,
      isLoading, isPasswordVisible, error, authResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState extends SignInState {
  const factory _SignInState(
      {final PasswordFormz password,
      final PhoneNumberFormz phoneNumber,
      final String? message,
      final bool isLoading,
      final bool isPasswordVisible,
      final String? error,
      final AuthResponseModel? authResponse}) = _$SignInStateImpl;
  const _SignInState._() : super._();

  @override
  PasswordFormz get password;
  @override
  PhoneNumberFormz get phoneNumber;
  @override
  String? get message;
  @override
  bool get isLoading;
  @override
  bool get isPasswordVisible;
  @override
  String? get error;
  @override
  AuthResponseModel? get authResponse;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
