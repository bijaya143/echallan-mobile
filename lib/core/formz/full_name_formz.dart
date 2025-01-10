import 'package:formz/formz.dart';

enum FullNameValidationError { empty, invalid }

class FullNameFormz extends FormzInput<String, FullNameValidationError> {
  const FullNameFormz.pure() : super.pure('');
  const FullNameFormz.dirty(super.value) : super.dirty();

  static final RegExp _fullNameRegExp = RegExp(r'^[a-zA-Z]+(?: [a-zA-Z]+)+$');

  @override
  FullNameValidationError? validator(String value) {
    if (value.isEmpty) return FullNameValidationError.empty;
    if (!_fullNameRegExp.hasMatch(value))
      return FullNameValidationError.invalid;
    return null;
  }
}

extension FullNameValidationErrorExplanation on FullNameValidationError {
  String get explain {
    switch (this) {
      case FullNameValidationError.empty:
        return 'Please enter your full name';
      case FullNameValidationError.invalid:
        return 'Please enter a valid full name (first and last name)';
    }
  }
}
