import 'dart:async';

import 'package:echalan/core/formz/full_name_formz.dart';
import 'package:echalan/core/formz/password_formz.dart';
import 'package:echalan/core/formz/phone_number_formz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_cubit.freezed.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit()
      : super(
          const SignUpState(),
        );

  final TextEditingController phoneNumberTextController =
      TextEditingController();

  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController fullNameTextController = TextEditingController();

  void onFullNameChanged(String value) {
    final fullName = FullNameFormz.dirty(
      value.trim(),
    );
    emit(
      state.copyWith(
        fullName: fullName,
        error: '',
      ),
    );
  }

  void onPhoneNumberChanged(String value) {
    final phoneNumber = PhoneNumberFormz.dirty(value.trim());
    emit(
      state.copyWith(
        phoneNumber: phoneNumber,
        error: '',
      ),
    );
  }

  void onPasswordChanged(String value) {
    final password = PasswordFormz.dirty(value);
    emit(
      state.copyWith(
        password: password,
      ),
    );
  }

  void onPasswordClearClick() {
    emit(
      state.copyWith(
        password: const PasswordFormz.pure(),
      ),
    );
    passwordTextController.clear();
  }

  void togglePassword() {
    emit(
      state.copyWith(
        isPasswordVisible: !state.isPasswordVisible,
      ),
    );
  }

  void clearTextControllers() {
    phoneNumberTextController.clear();
    passwordTextController.clear();
    fullNameTextController.clear();
    emit(
      state.copyWith(
        phoneNumber: const PhoneNumberFormz.pure(),
        fullName: const FullNameFormz.pure(),
        password: const PasswordFormz.pure(),
      ),
    );
  }
}
