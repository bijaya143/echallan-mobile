import 'package:echalan/core/constants/e_sewa_key.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/core/service/api_services/api_service.dart';
import 'package:echalan/feature/auth_user/auth_user_dashboard/data/model/violation_record_model.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/custom_toast.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_config.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';

part 'ticket_settlement_cubit.freezed.dart';
part 'ticket_settlement_state.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class TicketSettlementCubit extends Cubit<TicketSettlementState> {
  TicketSettlementCubit() : super(const TicketSettlementState());

  // final _apiService = di<ApiService>();

  Future<void> initiateEsewaPayment({
    required String productId,
    required String productName,
    required String productPrice,
    required BuildContext context,
  }) async {
    emit(
      state.copyWith(
        isLoading: true,
        error: '',
        isPaymentSuccess: false,
        isPaymentFailed: false,
      ),
    );

    try {
      EsewaFlutterSdk.initPayment(
        esewaConfig: EsewaConfig(
          environment: Environment.test,
          clientId: EsewaKey.clientId,
          secretId: EsewaKey.clientSecret,
        ),
        esewaPayment: EsewaPayment(
          productId: productId,
          productName: productName,
          productPrice: productPrice,
          callbackUrl: '',
        ),
        onPaymentSuccess: (EsewaPaymentSuccessResult data) {
          emit(
            state.copyWith(
              isLoading: false,
              error: '',
              isPaymentSuccess: true,
              isPaymentFailed: false,
            ),
          );
          debugPrint(':::SUCCESS::: => $data');
          Navigator.pushNamed(
            context,
            AppRouter.paymentSuccessScreen,
            arguments: data.message,
          );
          // verifyTransactionStatus(data);
        },
        onPaymentFailure: (data) {
          debugPrint(':::FAILURE::: => $data');
          emit(
            state.copyWith(
              isLoading: false,
              error: '',
              isPaymentSuccess: false,
              isPaymentFailed: true,
            ),
          );
          Navigator.pushNamed(
            context,
            AppRouter.paymentFailedScreen,
            arguments: data.toString(),
          );
        },
        onPaymentCancellation: (data) {
          debugPrint(':::CANCELLATION::: => $data');
          emit(
            state.copyWith(
              isLoading: false,
              isPaymentFailed: true,
              error: 'Payment cancelled',
            ),
          );
          CustomToast.show(
            context,
            'Payment cancelled',
          );
        },
      );
    } on Exception catch (e) {
      debugPrint('EXCEPTION : ${e}');
      emit(
        state.copyWith(
          isLoading: false,
          isPaymentFailed: true,
          error: e.toString(),
        ),
      );
    }
  }
}
