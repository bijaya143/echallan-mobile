import 'package:formz/formz.dart';

enum ConfirmedPasswordValidationError { invalid, mismatch, empty }

class ConfirmedPasswordFormz
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  final String password;

  const ConfirmedPasswordFormz.pure({this.password = ''}) : super.pure('');

  const ConfirmedPasswordFormz.dirty(
      {required this.password, String value = ''})
      : super.dirty(value);

  @override
  ConfirmedPasswordValidationError? validator(String value) {
    if (password.isEmpty) {
      return ConfirmedPasswordValidationError.invalid;
    } else if (value.isEmpty) {
      return ConfirmedPasswordValidationError.empty;
    }
    return password == value ? null : ConfirmedPasswordValidationError.mismatch;
  }
}

extension Explanation on ConfirmedPasswordValidationError {
  String? get explain {
    switch (this) {
      case ConfirmedPasswordValidationError.invalid:
        return 'Fill the password first';
      case ConfirmedPasswordValidationError.empty:
        return 'Password cannot be empty';
      case ConfirmedPasswordValidationError.mismatch:
        return 'Passwords must match';
      default:
        return null;
    }
  }
}
