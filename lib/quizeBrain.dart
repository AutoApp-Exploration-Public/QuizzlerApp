import 'question.dart';

class QuizBrain{
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question( 'Mt.Everest lies on Nepal',  true ),
    Question('Gautam Buddha was born in Nepal',   true ),
    Question( 'Nepal is the richest country in the Water',  false ),
    Question( 'There are 123 languages and 125 casts in Nepal',  true),
    Question( 'There are 77 district in Nepal',  true),
    Question( 'Sun rises from west',  false),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }
  String getQuestion(){
    return _questionBank[_questionNumber].question;
  }

  bool getCorrectAnswer( ) {
    return _questionBank[_questionNumber].questionAnswer;
  }
    //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

    bool isFinished() {
      if (_questionNumber >= _questionBank.length - 1) {
        //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

        print('Now returning true');
        return true;

      } else {
        return false;
      }
    }

    //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
    void reset() {
      _questionNumber = 0;
    }
  }
