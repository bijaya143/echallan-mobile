import 'package:echalan/core/formz/formz_export.dart';
import 'package:echalan/core/imports/ui_imports.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_profile_cubit.freezed.dart';
part 'auth_user_profile_state.dart';

class AuthUserProfileCubit extends Cubit<AuthUserProfileState> {
  AuthUserProfileCubit() : super(const AuthUserProfileState());
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController oldPasswordController = TextEditingController();

  void onOldPasswordChanged(String value) {
    final oldPassword = OldPasswordFormz.dirty(value);
    emit(
      state.copyWith(
        oldPassword: oldPassword,
        newPassword: state.newPassword.isPure
            ? state.newPassword
            : PasswordFormz.dirty(
                state.newPassword.value,
                value,
              ),
      ),
    );
  }

  void onNewPasswordChanged(String value) {
    final password = PasswordFormz.dirty(
      value,
      state.oldPassword.value,
    );
    final confirmPassword = ConfirmedPasswordFormz.dirty(
      password: value,
      value: state.confirmPassword.value,
    );

    emit(state.copyWith(
      newPassword: password,
      confirmPassword: state.confirmPassword.isPure
          ? state.confirmPassword
          : confirmPassword,
    ));
  }

  void onConfirmPasswordChanged(String value) {
    final confirmPassword = ConfirmedPasswordFormz.dirty(
      password: state.newPassword.value,
      value: value,
    );
    emit(state.copyWith(confirmPassword: confirmPassword));
  }

  void toggleOldPassword() {
    emit(state.copyWith(isOldPasswordObscure: !state.isOldPasswordObscure));
  }

  void toggleNewPassword() {
    emit(state.copyWith(isNewPasswordObscure: !state.isNewPasswordObscure));
  }

  void toggleConfirmPassword() {
    emit(state.copyWith(
      isConfirmPasswordObscure: !state.isConfirmPasswordObscure,
    ));
  }

  void clearFields() {
    oldPasswordController.clear();
    newPasswordController.clear();
    confirmPasswordController.clear();
    emit(
      state.copyWith(
        oldPassword: const OldPasswordFormz.pure(),
        newPassword: const PasswordFormz.pure(),
        confirmPassword: const ConfirmedPasswordFormz.pure(),
        isOldPasswordObscure: true,
        isNewPasswordObscure: true,
        isConfirmPasswordObscure: true,
      ),
    );
  }

  void resetState() {
    emit(const AuthUserProfileState());
  }
}
