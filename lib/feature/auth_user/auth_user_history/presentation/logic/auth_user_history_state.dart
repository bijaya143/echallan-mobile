part of 'auth_user_history_cubit.dart';

@freezed
class AuthUserHistoryState with _$AuthUserHistoryState {
  const AuthUserHistoryState._();

  const factory AuthUserHistoryState({
    @Default(0) int selectedTabIndex,
  }) = _AuthUserHistoryState;
}
