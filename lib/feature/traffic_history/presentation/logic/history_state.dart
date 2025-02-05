part of 'history_cubit.dart';

@freezed
class HistoryState with _$HistoryState {
  const HistoryState._();

  const factory HistoryState({
    @Default(0) int selectedTabIndex,
  }) = _HistoryState;
}
