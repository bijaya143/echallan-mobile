import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_history_state.dart';

part 'auth_user_history_cubit.freezed.dart';

class AuthUserHistoryCubit extends Cubit<AuthUserHistoryState> {
  AuthUserHistoryCubit() : super(const AuthUserHistoryState());

  void onTabSelected(int index) {
    emit(
      state.copyWith(
        selectedTabIndex: index,
      ),
    );
  }
}
