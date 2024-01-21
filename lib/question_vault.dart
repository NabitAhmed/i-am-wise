import 'question.dart';

class QuestionVault {
  int _questionNumber = 0;
  List<Question> _questionSet = [
    Question(
        ques: 'Flutter can only develop mobile applications.',
        img: "images/flutter.png",
        ans: false),
    Question(
        ques: 'Colombo is the capital of Sri Lanka.',
        img: "images/colombo.jpeg",
        ans: true),
    Question(
        ques: 'Cox\'s Bazar is the longest sea beach in the world.',
        img: "images/sea-beach.jpeg",
        ans: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionSet.length - 1) _questionNumber++;
  }

  String getQuestionTitle() {
    return _questionSet[_questionNumber].questionTitle;
  }

  String getImage() {
    return _questionSet[_questionNumber].image;
  }

  bool getAnswer() {
    return _questionSet[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionSet.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
