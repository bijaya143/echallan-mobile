part of 'otp_cubit.dart';

extension Validator on OtpState {
  bool get status => Formz.validate([
        phoneNumber,
      ]);

  bool get canSubmit =>
      phoneNumber.isPure == false && phoneNumber.isValid && status;
}

@freezed
class OtpState with _$OtpState {
  const factory OtpState({
    @Default(PhoneNumberFormz.pure()) PhoneNumberFormz phoneNumber,
    @Default('') String? error,
    @Default('') String? message,
  }) = _OtpState;
  const OtpState._();
}
