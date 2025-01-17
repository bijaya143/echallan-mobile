part of 'find_chalan_cubit.dart';

@freezed
class FindChalanState with _$FindChalanState {
  const FindChalanState._();

  const factory FindChalanState({
    @Default(null) ChalanDetailModel? selectedChalanDetail,
  }) = _FindChalanState;
}
