part of 'sign_in_cubit.dart';

extension Validator on SignInState {
  bool get status => Formz.validate([
        password,
        phoneNumber,
      ]);

  bool get canSubmit =>
      password.isPure == false && phoneNumber.isPure == false && status;
}

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(PasswordFormz.pure()) PasswordFormz password,
    @Default(PhoneNumberFormz.pure()) PhoneNumberFormz phoneNumber,
    @Default('') String? message,
    @Default(false) bool isLoading,
    @Default(false) bool isPasswordVisible,
    @Default('') String? error,
    @Default(null) AuthResponseModel? authResponse,
  }) = _SignInState;
  const SignInState._();
}
