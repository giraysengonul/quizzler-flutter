import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Türkiyenin başkenti Ankaradır.', true),
    Question('Karbonhidrat kilo aldırmaz', false),
    Question('İstanbulu Fatih Sultan Mehmet fethetmiştir', true),
    Question('Türkiyenin 3 tarafı denizlerle çevrilidir.', true),
    Question('ALmanya Avrupa Kıtasındadır".', true),
    Question('Kayseri İç Anadoluda bulunuyor.', true),
    Question('Orduda Fındık yetişmez.', false),
    Question('Londra İngilterenin en büyük şehridir.', true),
    Question('Solak olan insanlar daha zekidir.', false),
    Question('Çin Nükleer silahı olan bir ülkedir.', true),
    Question('Selam vermek sünnettir', true),
    Question(' 3 + 2 = 5', true),
    Question('Fıransa Afrika Kıtasındadır', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
