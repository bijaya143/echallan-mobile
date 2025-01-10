import 'package:formz/formz.dart';

enum OldPasswordValidationError { empty }

class OldPasswordFormz extends FormzInput<String, OldPasswordValidationError> {
  const OldPasswordFormz.pure() : super.pure('');
  const OldPasswordFormz.dirty(super.value) : super.dirty();

  @override
  OldPasswordValidationError? validator(String value) {
    if (value.isEmpty) return OldPasswordValidationError.empty;
    return null;
  }
}

extension OldPasswordValidationErrorExplanation on OldPasswordValidationError {
  String get explain {
    switch (this) {
      case OldPasswordValidationError.empty:
        return 'Please enter your current password';
    }
  }
}
