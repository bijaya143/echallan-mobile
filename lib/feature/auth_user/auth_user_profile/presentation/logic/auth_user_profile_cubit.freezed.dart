// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthUserProfileState {
  OldPasswordFormz get oldPassword => throw _privateConstructorUsedError;
  PasswordFormz get newPassword => throw _privateConstructorUsedError;
  ConfirmedPasswordFormz get confirmPassword =>
      throw _privateConstructorUsedError;
  bool get isOldPasswordObscure => throw _privateConstructorUsedError;
  bool get isNewPasswordObscure => throw _privateConstructorUsedError;
  bool get isConfirmPasswordObscure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthUserProfileStateCopyWith<AuthUserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserProfileStateCopyWith<$Res> {
  factory $AuthUserProfileStateCopyWith(AuthUserProfileState value,
          $Res Function(AuthUserProfileState) then) =
      _$AuthUserProfileStateCopyWithImpl<$Res, AuthUserProfileState>;
  @useResult
  $Res call(
      {OldPasswordFormz oldPassword,
      PasswordFormz newPassword,
      ConfirmedPasswordFormz confirmPassword,
      bool isOldPasswordObscure,
      bool isNewPasswordObscure,
      bool isConfirmPasswordObscure});
}

/// @nodoc
class _$AuthUserProfileStateCopyWithImpl<$Res,
        $Val extends AuthUserProfileState>
    implements $AuthUserProfileStateCopyWith<$Res> {
  _$AuthUserProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? isOldPasswordObscure = null,
    Object? isNewPasswordObscure = null,
    Object? isConfirmPasswordObscure = null,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as OldPasswordFormz,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPasswordFormz,
      isOldPasswordObscure: null == isOldPasswordObscure
          ? _value.isOldPasswordObscure
          : isOldPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewPasswordObscure: null == isNewPasswordObscure
          ? _value.isNewPasswordObscure
          : isNewPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordObscure: null == isConfirmPasswordObscure
          ? _value.isConfirmPasswordObscure
          : isConfirmPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthUserProfileStateImplCopyWith<$Res>
    implements $AuthUserProfileStateCopyWith<$Res> {
  factory _$$AuthUserProfileStateImplCopyWith(_$AuthUserProfileStateImpl value,
          $Res Function(_$AuthUserProfileStateImpl) then) =
      __$$AuthUserProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OldPasswordFormz oldPassword,
      PasswordFormz newPassword,
      ConfirmedPasswordFormz confirmPassword,
      bool isOldPasswordObscure,
      bool isNewPasswordObscure,
      bool isConfirmPasswordObscure});
}

/// @nodoc
class __$$AuthUserProfileStateImplCopyWithImpl<$Res>
    extends _$AuthUserProfileStateCopyWithImpl<$Res, _$AuthUserProfileStateImpl>
    implements _$$AuthUserProfileStateImplCopyWith<$Res> {
  __$$AuthUserProfileStateImplCopyWithImpl(_$AuthUserProfileStateImpl _value,
      $Res Function(_$AuthUserProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? isOldPasswordObscure = null,
    Object? isNewPasswordObscure = null,
    Object? isConfirmPasswordObscure = null,
  }) {
    return _then(_$AuthUserProfileStateImpl(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as OldPasswordFormz,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPasswordFormz,
      isOldPasswordObscure: null == isOldPasswordObscure
          ? _value.isOldPasswordObscure
          : isOldPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewPasswordObscure: null == isNewPasswordObscure
          ? _value.isNewPasswordObscure
          : isNewPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordObscure: null == isConfirmPasswordObscure
          ? _value.isConfirmPasswordObscure
          : isConfirmPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthUserProfileStateImpl extends _AuthUserProfileState {
  const _$AuthUserProfileStateImpl(
      {this.oldPassword = const OldPasswordFormz.pure(),
      this.newPassword = const PasswordFormz.pure(),
      this.confirmPassword = const ConfirmedPasswordFormz.pure(),
      this.isOldPasswordObscure = true,
      this.isNewPasswordObscure = true,
      this.isConfirmPasswordObscure = true})
      : super._();

  @override
  @JsonKey()
  final OldPasswordFormz oldPassword;
  @override
  @JsonKey()
  final PasswordFormz newPassword;
  @override
  @JsonKey()
  final ConfirmedPasswordFormz confirmPassword;
  @override
  @JsonKey()
  final bool isOldPasswordObscure;
  @override
  @JsonKey()
  final bool isNewPasswordObscure;
  @override
  @JsonKey()
  final bool isConfirmPasswordObscure;

  @override
  String toString() {
    return 'AuthUserProfileState(oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword, isOldPasswordObscure: $isOldPasswordObscure, isNewPasswordObscure: $isNewPasswordObscure, isConfirmPasswordObscure: $isConfirmPasswordObscure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserProfileStateImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isOldPasswordObscure, isOldPasswordObscure) ||
                other.isOldPasswordObscure == isOldPasswordObscure) &&
            (identical(other.isNewPasswordObscure, isNewPasswordObscure) ||
                other.isNewPasswordObscure == isNewPasswordObscure) &&
            (identical(
                    other.isConfirmPasswordObscure, isConfirmPasswordObscure) ||
                other.isConfirmPasswordObscure == isConfirmPasswordObscure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      oldPassword,
      newPassword,
      confirmPassword,
      isOldPasswordObscure,
      isNewPasswordObscure,
      isConfirmPasswordObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserProfileStateImplCopyWith<_$AuthUserProfileStateImpl>
      get copyWith =>
          __$$AuthUserProfileStateImplCopyWithImpl<_$AuthUserProfileStateImpl>(
              this, _$identity);
}

abstract class _AuthUserProfileState extends AuthUserProfileState {
  const factory _AuthUserProfileState(
      {final OldPasswordFormz oldPassword,
      final PasswordFormz newPassword,
      final ConfirmedPasswordFormz confirmPassword,
      final bool isOldPasswordObscure,
      final bool isNewPasswordObscure,
      final bool isConfirmPasswordObscure}) = _$AuthUserProfileStateImpl;
  const _AuthUserProfileState._() : super._();

  @override
  OldPasswordFormz get oldPassword;
  @override
  PasswordFormz get newPassword;
  @override
  ConfirmedPasswordFormz get confirmPassword;
  @override
  bool get isOldPasswordObscure;
  @override
  bool get isNewPasswordObscure;
  @override
  bool get isConfirmPasswordObscure;
  @override
  @JsonKey(ignore: true)
  _$$AuthUserProfileStateImplCopyWith<_$AuthUserProfileStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
