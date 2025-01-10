part of 'sign_up_cubit.dart';

extension Validator on SignUpState {
  bool get status => Formz.validate([
        password,
        fullName,
        phoneNumber,
      ]);

  bool get canSubmit =>
      password.isPure == false &&
      fullName.isPure == false &&
      phoneNumber.isPure == false &&
      status;
}

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(FullNameFormz.pure()) FullNameFormz fullName,
    @Default(PhoneNumberFormz.pure()) PhoneNumberFormz phoneNumber,
    @Default(PasswordFormz.pure()) PasswordFormz password,
    @Default(false) bool isRegisterSuccess,
    @Default(false) bool isRegisterLoading,
    @Default('') String? message,
    @Default(false) bool showVisibilityIcon,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    @Default(false) bool isLoginLoading,
    @Default('') String? error,
  }) = _SignUpState;
  const SignUpState._();
}
