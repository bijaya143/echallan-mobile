part of 'payment_method_cubit.dart';

@freezed
class PaymentMethodState with _$PaymentMethodState {
  const PaymentMethodState._();

  const factory PaymentMethodState({
    @Default(null) PaymentMethodModel? selectedPaymentMethod,
  }) = _PaymentMethodState;
}
