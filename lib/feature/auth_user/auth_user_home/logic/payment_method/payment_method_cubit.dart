import 'package:echalan/feature/auth_user/auth_user_dashboard/data/model/payment_method_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_state.dart';

part 'payment_method_cubit.freezed.dart';

class PaymentMethodCubit extends Cubit<PaymentMethodState> {
  PaymentMethodCubit() : super(const PaymentMethodState());

  void onPaymentMethodSelected(PaymentMethodModel paymentMethod) {
    emit(
      state.copyWith(
        selectedPaymentMethod: paymentMethod,
      ),
    );
  }

  void clearPaymentMethod() {
    emit(
      state.copyWith(
        selectedPaymentMethod: null,
      ),
    );
  }

  @override
  Future<void> close() {
    clearPaymentMethod();
    return super.close();
  }
}
