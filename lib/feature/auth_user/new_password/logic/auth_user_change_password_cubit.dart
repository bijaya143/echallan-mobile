import 'dart:async';

import 'package:echalan/core/formz/formz_export.dart';
import 'package:echalan/core/formz/password_formz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_change_password_cubit.freezed.dart';

part 'auth_user_change_password_state.dart';

class AuthUserChangePasswordCubit extends Cubit<AuthUserChangePasswordState> {
  AuthUserChangePasswordCubit()
      : super(
          const AuthUserChangePasswordState(),
        );

  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController confirmPasswordTextController =
      TextEditingController();

  void onPasswordChanged(String value) {
    final password = PasswordFormz.dirty(value);
    final confirmPassword = ConfirmedPasswordFormz.dirty(
      password: password.value,
      value: state.confirmPassword.value,
    );
    emit(
      state.copyWith(
        password: password,
        confirmPassword: confirmPassword,
      ),
    );
  }

  void onConfirmPasswordChanged(String value) {
    final confirmPassword = ConfirmedPasswordFormz.dirty(
      password: state.password.value,
      value: value,
    );
    emit(
      state.copyWith(
        confirmPassword: confirmPassword,
      ),
    );
  }

  void togglePassword() {
    emit(
      state.copyWith(
        isPasswordVisible: !state.isPasswordVisible,
      ),
    );
  }

  void toggleConfirmPassword() {
    emit(
      state.copyWith(
        isConfirmPasswordVisible: !state.isConfirmPasswordVisible,
      ),
    );
  }

  void clearTextControllers() {
    passwordTextController.clear();
    confirmPasswordTextController.clear();
    emit(
      state.copyWith(
        password: const PasswordFormz.pure(),
        confirmPassword: const ConfirmedPasswordFormz.pure(),
      ),
    );
  }
}
