part of 'auth_user_profile_cubit.dart';

@freezed
class AuthUserProfileState with _$AuthUserProfileState {
  const factory AuthUserProfileState({
    @Default(OldPasswordFormz.pure()) OldPasswordFormz oldPassword,
    @Default(PasswordFormz.pure()) PasswordFormz newPassword,
    @Default(ConfirmedPasswordFormz.pure())
    ConfirmedPasswordFormz confirmPassword,
    @Default(true) bool isOldPasswordObscure,
    @Default(true) bool isNewPasswordObscure,
    @Default(true) bool isConfirmPasswordObscure,
  }) = _AuthUserProfileState;
  const AuthUserProfileState._();
}

extension Validator on AuthUserProfileState {
  bool get status => Formz.validate([
        oldPassword,
        newPassword,
        confirmPassword,
      ]);

  bool get isPasswordsSame => oldPassword.value == newPassword.value;

  bool get canSubmit =>
      oldPassword.isPure == false &&
      newPassword.isPure == false &&
      confirmPassword.isPure == false &&
      !isPasswordsSame &&
      status;
}
