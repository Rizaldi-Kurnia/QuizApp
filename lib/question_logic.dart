import 'package:quiz_app/question.dart';

class QuestionLogic {
  //penamaan variable lokal harus di awali _
  //_questionNumber sebagai index dari array
  int _questionNumber = 0;

  //data array untuk mengisi model Question
  List<Question> _questionList = [
    Question('Is Reyhan Singles?', true),
    Question('Is aldi fat?', false),
    Question('Is Islam a terrorist?', false),
    Question('is prayer obligatory?', true),
    Question('is rambutan sweet?', true),
    Question('Is Reyhan a bad person?', false),
    Question('Are the ants big?', false),
    Question('Is money important?', true),
    Question('is pork halal?', false),
    Question('Is Bekasi Hot City?', false),
  ];

  //listQuestion[0].question
  /*fungsi dari pemanggilan variable getQuestion adalah untuk mengambil question di dalam _questionList sesuai dengan index dari _questionNumber*/

  String getQuestion() => _questionList[_questionNumber].question;

  //fungsi nya untuk mengetahui sampai mana index sekarang
  int getQuestionNumberText() => _questionNumber + 1;

  //fungsi dari pemanggilan getTotalQuestion adalah untuk mengambil jumlah data yang ada di _questionList
  int getTotalQuestionText() => _questionList.length;

  /*fungsi dari pemanggilan variable getQuestion adalah untuk mengambil answer di dalam _questionList sesuai dengan index dari _questionNumber*/
  bool getCorrectAnswer() => _questionList[_questionNumber].answer;

  void nextQuestion() {
    /*di sini ada kondisi variable _questionNumber di tambah 1 ketika jumlahnya masih kurang dari 9(jumlah data _questionList - 1)*/
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
      print(_questionNumber);
    }
  }

  bool isFinished() {
    /*ketika _questionNumber lebih besar/sama dengan 9(total jumlah data _questionList - 1 maka isFinished() akan return true, ketika belum akan return false*/
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  //mereset questionNumber menjadi 0
  void resetQuestion() => _questionNumber = 0;
}
