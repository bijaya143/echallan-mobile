part of 'ticket_settlement_cubit.dart';

@freezed
class TicketSettlementState with _$TicketSettlementState {
  const factory TicketSettlementState({
    @Default(false) bool isPaymentSuccess,
    @Default(false) bool isPaymentFailed,
    @Default('') String error,
    @Default(false) bool isLoading,
    @Default(null) ViolationRecordModel? ticket,
    @Default(PaymentMethod.esewa) PaymentMethod activePaymentMethod,
    @Default('') String transactionId,
  }) = _TicketSettlementState;
}

enum PaymentMethod { esewa, khalti, imePay }
