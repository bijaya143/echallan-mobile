import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_state.dart';

part 'history_cubit.freezed.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(const HistoryState());

  void onTabSelected(int index) {
    emit(
      state.copyWith(
        selectedTabIndex: index,
      ),
    );
  }
}
