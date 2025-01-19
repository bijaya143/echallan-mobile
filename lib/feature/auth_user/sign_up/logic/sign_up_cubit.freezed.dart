// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {
  FullNameFormz get fullName => throw _privateConstructorUsedError;
  PhoneNumberFormz get phoneNumber => throw _privateConstructorUsedError;
  PasswordFormz get password => throw _privateConstructorUsedError;
  bool get isRegisterSuccess => throw _privateConstructorUsedError;
  bool get isRegisterLoading => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get showVisibilityIcon => throw _privateConstructorUsedError;
  bool get isPasswordVisible => throw _privateConstructorUsedError;
  bool get isConfirmPasswordVisible => throw _privateConstructorUsedError;
  bool get isLoginLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  AuthResponseModel? get authResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {FullNameFormz fullName,
      PhoneNumberFormz phoneNumber,
      PasswordFormz password,
      bool isRegisterSuccess,
      bool isRegisterLoading,
      String? message,
      bool showVisibilityIcon,
      bool isPasswordVisible,
      bool isConfirmPasswordVisible,
      bool isLoginLoading,
      String? error,
      AuthResponseModel? authResponse});

  $AuthResponseModelCopyWith<$Res>? get authResponse;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? isRegisterSuccess = null,
    Object? isRegisterLoading = null,
    Object? message = freezed,
    Object? showVisibilityIcon = null,
    Object? isPasswordVisible = null,
    Object? isConfirmPasswordVisible = null,
    Object? isLoginLoading = null,
    Object? error = freezed,
    Object? authResponse = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullNameFormz,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFormz,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      isRegisterSuccess: null == isRegisterSuccess
          ? _value.isRegisterSuccess
          : isRegisterSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegisterLoading: null == isRegisterLoading
          ? _value.isRegisterLoading
          : isRegisterLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      showVisibilityIcon: null == showVisibilityIcon
          ? _value.showVisibilityIcon
          : showVisibilityIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordVisible: null == isConfirmPasswordVisible
          ? _value.isConfirmPasswordVisible
          : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginLoading: null == isLoginLoading
          ? _value.isLoginLoading
          : isLoginLoading // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FullNameFormz fullName,
      PhoneNumberFormz phoneNumber,
      PasswordFormz password,
      bool isRegisterSuccess,
      bool isRegisterLoading,
      String? message,
      bool showVisibilityIcon,
      bool isPasswordVisible,
      bool isConfirmPasswordVisible,
      bool isLoginLoading,
      String? error,
      AuthResponseModel? authResponse});

  @override
  $AuthResponseModelCopyWith<$Res>? get authResponse;
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? isRegisterSuccess = null,
    Object? isRegisterLoading = null,
    Object? message = freezed,
    Object? showVisibilityIcon = null,
    Object? isPasswordVisible = null,
    Object? isConfirmPasswordVisible = null,
    Object? isLoginLoading = null,
    Object? error = freezed,
    Object? authResponse = freezed,
  }) {
    return _then(_$SignUpStateImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullNameFormz,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFormz,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      isRegisterSuccess: null == isRegisterSuccess
          ? _value.isRegisterSuccess
          : isRegisterSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegisterLoading: null == isRegisterLoading
          ? _value.isRegisterLoading
          : isRegisterLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      showVisibilityIcon: null == showVisibilityIcon
          ? _value.showVisibilityIcon
          : showVisibilityIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordVisible: null == isConfirmPasswordVisible
          ? _value.isConfirmPasswordVisible
          : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginLoading: null == isLoginLoading
          ? _value.isLoginLoading
          : isLoginLoading // ignore: cast_nullable_to_non_nullable
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

class _$SignUpStateImpl extends _SignUpState with DiagnosticableTreeMixin {
  const _$SignUpStateImpl(
      {this.fullName = const FullNameFormz.pure(),
      this.phoneNumber = const PhoneNumberFormz.pure(),
      this.password = const PasswordFormz.pure(),
      this.isRegisterSuccess = false,
      this.isRegisterLoading = false,
      this.message = '',
      this.showVisibilityIcon = false,
      this.isPasswordVisible = false,
      this.isConfirmPasswordVisible = false,
      this.isLoginLoading = false,
      this.error = '',
      this.authResponse = null})
      : super._();

  @override
  @JsonKey()
  final FullNameFormz fullName;
  @override
  @JsonKey()
  final PhoneNumberFormz phoneNumber;
  @override
  @JsonKey()
  final PasswordFormz password;
  @override
  @JsonKey()
  final bool isRegisterSuccess;
  @override
  @JsonKey()
  final bool isRegisterLoading;
  @override
  @JsonKey()
  final String? message;
  @override
  @JsonKey()
  final bool showVisibilityIcon;
  @override
  @JsonKey()
  final bool isPasswordVisible;
  @override
  @JsonKey()
  final bool isConfirmPasswordVisible;
  @override
  @JsonKey()
  final bool isLoginLoading;
  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final AuthResponseModel? authResponse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState(fullName: $fullName, phoneNumber: $phoneNumber, password: $password, isRegisterSuccess: $isRegisterSuccess, isRegisterLoading: $isRegisterLoading, message: $message, showVisibilityIcon: $showVisibilityIcon, isPasswordVisible: $isPasswordVisible, isConfirmPasswordVisible: $isConfirmPasswordVisible, isLoginLoading: $isLoginLoading, error: $error, authResponse: $authResponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState'))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('isRegisterSuccess', isRegisterSuccess))
      ..add(DiagnosticsProperty('isRegisterLoading', isRegisterLoading))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('showVisibilityIcon', showVisibilityIcon))
      ..add(DiagnosticsProperty('isPasswordVisible', isPasswordVisible))
      ..add(DiagnosticsProperty(
          'isConfirmPasswordVisible', isConfirmPasswordVisible))
      ..add(DiagnosticsProperty('isLoginLoading', isLoginLoading))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('authResponse', authResponse));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isRegisterSuccess, isRegisterSuccess) ||
                other.isRegisterSuccess == isRegisterSuccess) &&
            (identical(other.isRegisterLoading, isRegisterLoading) ||
                other.isRegisterLoading == isRegisterLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.showVisibilityIcon, showVisibilityIcon) ||
                other.showVisibilityIcon == showVisibilityIcon) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible) &&
            (identical(
                    other.isConfirmPasswordVisible, isConfirmPasswordVisible) ||
                other.isConfirmPasswordVisible == isConfirmPasswordVisible) &&
            (identical(other.isLoginLoading, isLoginLoading) ||
                other.isLoginLoading == isLoginLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.authResponse, authResponse) ||
                other.authResponse == authResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      phoneNumber,
      password,
      isRegisterSuccess,
      isRegisterLoading,
      message,
      showVisibilityIcon,
      isPasswordVisible,
      isConfirmPasswordVisible,
      isLoginLoading,
      error,
      authResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState extends SignUpState {
  const factory _SignUpState(
      {final FullNameFormz fullName,
      final PhoneNumberFormz phoneNumber,
      final PasswordFormz password,
      final bool isRegisterSuccess,
      final bool isRegisterLoading,
      final String? message,
      final bool showVisibilityIcon,
      final bool isPasswordVisible,
      final bool isConfirmPasswordVisible,
      final bool isLoginLoading,
      final String? error,
      final AuthResponseModel? authResponse}) = _$SignUpStateImpl;
  const _SignUpState._() : super._();

  @override
  FullNameFormz get fullName;
  @override
  PhoneNumberFormz get phoneNumber;
  @override
  PasswordFormz get password;
  @override
  bool get isRegisterSuccess;
  @override
  bool get isRegisterLoading;
  @override
  String? get message;
  @override
  bool get showVisibilityIcon;
  @override
  bool get isPasswordVisible;
  @override
  bool get isConfirmPasswordVisible;
  @override
  bool get isLoginLoading;
  @override
  String? get error;
  @override
  AuthResponseModel? get authResponse;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
