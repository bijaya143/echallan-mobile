import 'package:echalan/feature/auth_user/auth_user_dashboard/data/model/payment_method_model.dart';
import 'package:echalan/feature/guest/find_chalan/data/dummy/chalan_dummy_data.dart';
import 'package:echalan/feature/guest/find_chalan/data/model/chalan_detail_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_chalan_state.dart';

part 'find_chalan_cubit.freezed.dart';

class FindChalanCubit extends Cubit<FindChalanState> {
  FindChalanCubit() : super(const FindChalanState());

  ChalanDetailModel? searchChalan({
    required String fiscalYear,
    required String province,
    required String district,
    required String challanNo,
  }) {
    print('fiscalYear: $fiscalYear');
    print('province: $province');
    print('district: $district');
    print('challanNo: $challanNo');
    try {
      print('Trying to find chalan');
      return chalanDetailDummyData.firstWhere(
        (chalan) =>
            chalan.fiscalYear == fiscalYear &&
            chalan.province == province &&
            chalan.district == district &&
            chalan.challanNo == challanNo,
      );
    } catch (_) {
      print('Chalan not found');
      return null;
    }
  }

  void onChalanSelected(ChalanDetailModel chalanDetail) {
    emit(
      state.copyWith(
        selectedChalanDetail: chalanDetail,
      ),
    );
  }

  void clearPaymentMethod() {
    emit(
      state.copyWith(
        selectedChalanDetail: null,
      ),
    );
  }

  @override
  Future<void> close() {
    clearPaymentMethod();
    return super.close();
  }
}
