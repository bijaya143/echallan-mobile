// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user_change_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthUserChangePasswordState {
  PasswordFormz get password => throw _privateConstructorUsedError;
  ConfirmedPasswordFormz get confirmPassword =>
      throw _privateConstructorUsedError;
  bool get isPasswordVisible => throw _privateConstructorUsedError;
  bool get isConfirmPasswordVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthUserChangePasswordStateCopyWith<AuthUserChangePasswordState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserChangePasswordStateCopyWith<$Res> {
  factory $AuthUserChangePasswordStateCopyWith(
          AuthUserChangePasswordState value,
          $Res Function(AuthUserChangePasswordState) then) =
      _$AuthUserChangePasswordStateCopyWithImpl<$Res,
          AuthUserChangePasswordState>;
  @useResult
  $Res call(
      {PasswordFormz password,
      ConfirmedPasswordFormz confirmPassword,
      bool isPasswordVisible,
      bool isConfirmPasswordVisible});
}

/// @nodoc
class _$AuthUserChangePasswordStateCopyWithImpl<$Res,
        $Val extends AuthUserChangePasswordState>
    implements $AuthUserChangePasswordStateCopyWith<$Res> {
  _$AuthUserChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? confirmPassword = null,
    Object? isPasswordVisible = null,
    Object? isConfirmPasswordVisible = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPasswordFormz,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordVisible: null == isConfirmPasswordVisible
          ? _value.isConfirmPasswordVisible
          : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthUserChangePasswordStateImplCopyWith<$Res>
    implements $AuthUserChangePasswordStateCopyWith<$Res> {
  factory _$$AuthUserChangePasswordStateImplCopyWith(
          _$AuthUserChangePasswordStateImpl value,
          $Res Function(_$AuthUserChangePasswordStateImpl) then) =
      __$$AuthUserChangePasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PasswordFormz password,
      ConfirmedPasswordFormz confirmPassword,
      bool isPasswordVisible,
      bool isConfirmPasswordVisible});
}

/// @nodoc
class __$$AuthUserChangePasswordStateImplCopyWithImpl<$Res>
    extends _$AuthUserChangePasswordStateCopyWithImpl<$Res,
        _$AuthUserChangePasswordStateImpl>
    implements _$$AuthUserChangePasswordStateImplCopyWith<$Res> {
  __$$AuthUserChangePasswordStateImplCopyWithImpl(
      _$AuthUserChangePasswordStateImpl _value,
      $Res Function(_$AuthUserChangePasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? confirmPassword = null,
    Object? isPasswordVisible = null,
    Object? isConfirmPasswordVisible = null,
  }) {
    return _then(_$AuthUserChangePasswordStateImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPasswordFormz,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordVisible: null == isConfirmPasswordVisible
          ? _value.isConfirmPasswordVisible
          : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthUserChangePasswordStateImpl extends _AuthUserChangePasswordState
    with DiagnosticableTreeMixin {
  const _$AuthUserChangePasswordStateImpl(
      {this.password = const PasswordFormz.pure(),
      this.confirmPassword = const ConfirmedPasswordFormz.pure(),
      this.isPasswordVisible = false,
      this.isConfirmPasswordVisible = false})
      : super._();

  @override
  @JsonKey()
  final PasswordFormz password;
  @override
  @JsonKey()
  final ConfirmedPasswordFormz confirmPassword;
  @override
  @JsonKey()
  final bool isPasswordVisible;
  @override
  @JsonKey()
  final bool isConfirmPasswordVisible;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthUserChangePasswordState(password: $password, confirmPassword: $confirmPassword, isPasswordVisible: $isPasswordVisible, isConfirmPasswordVisible: $isConfirmPasswordVisible)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthUserChangePasswordState'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('confirmPassword', confirmPassword))
      ..add(DiagnosticsProperty('isPasswordVisible', isPasswordVisible))
      ..add(DiagnosticsProperty(
          'isConfirmPasswordVisible', isConfirmPasswordVisible));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserChangePasswordStateImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible) &&
            (identical(
                    other.isConfirmPasswordVisible, isConfirmPasswordVisible) ||
                other.isConfirmPasswordVisible == isConfirmPasswordVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, confirmPassword,
      isPasswordVisible, isConfirmPasswordVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserChangePasswordStateImplCopyWith<_$AuthUserChangePasswordStateImpl>
      get copyWith => __$$AuthUserChangePasswordStateImplCopyWithImpl<
          _$AuthUserChangePasswordStateImpl>(this, _$identity);
}

abstract class _AuthUserChangePasswordState
    extends AuthUserChangePasswordState {
  const factory _AuthUserChangePasswordState(
      {final PasswordFormz password,
      final ConfirmedPasswordFormz confirmPassword,
      final bool isPasswordVisible,
      final bool isConfirmPasswordVisible}) = _$AuthUserChangePasswordStateImpl;
  const _AuthUserChangePasswordState._() : super._();

  @override
  PasswordFormz get password;
  @override
  ConfirmedPasswordFormz get confirmPassword;
  @override
  bool get isPasswordVisible;
  @override
  bool get isConfirmPasswordVisible;
  @override
  @JsonKey(ignore: true)
  _$$AuthUserChangePasswordStateImplCopyWith<_$AuthUserChangePasswordStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
