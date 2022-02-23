import 'package:formz/formz.dart';

enum ScoreValidationError { empty, invalidScore }

class Score extends FormzInput<String, ScoreValidationError> {
  const Score.pure() : super.pure('');
  const Score.dirty([String value = '']) : super.dirty(value);

  @override
  ScoreValidationError? validator(String value) {
    if (value.isEmpty) {
      return ScoreValidationError.empty;
    } else if (int.parse(value) > 20 && int.parse(value) != 25) {
      return ScoreValidationError.invalidScore;
    }

    return null;
  }
}
