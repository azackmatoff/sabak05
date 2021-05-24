class Question {
  final String questionText;
  final bool questionAnswer;

  Question(this.questionText, this.questionAnswer);
}

class IfElse {
  void funkciyaAty(String value) {
    print('IfElse.funkciyaAty $value');
  }

  String sanNolbu(int value) {
    if (value == 0) {
      return 'Kelgen san 0';
    } else if (value == 10) {
      return 'Kelgen san 10 ';
    } else if (value == 11) {
      return 'Kelgen san 11 ';
    } else {
      if (value == 1) {
        return 'Kelgen san 1 ';
      } else {
        return 'Kelgen san 0, 10, 11 je 1 emes';
      }
    }
  }

  String kiruu(String name, String parol) {
    return 'data';
  }
}

final IfElse ifElse = IfElse();
