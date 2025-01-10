part of 'auth_user_change_password_cubit.dart';

@freezed
class AuthUserChangePasswordState with _$AuthUserChangePasswordState {
  const factory AuthUserChangePasswordState({
    @Default(PasswordFormz.pure()) PasswordFormz password,
    @Default(ConfirmedPasswordFormz.pure())
    ConfirmedPasswordFormz confirmPassword,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
  }) = _AuthUserChangePasswordState;
  const AuthUserChangePasswordState._();
}

extension Validator on AuthUserChangePasswordState {
  bool get status => Formz.validate([
        password,
        confirmPassword,
      ]);

  bool get isPasswordsSame => password.value == confirmPassword.value;

  bool get canSubmit =>
      password.isPure == false &&
      confirmPassword.isPure == false &&
      isPasswordsSame &&
      status;
}
