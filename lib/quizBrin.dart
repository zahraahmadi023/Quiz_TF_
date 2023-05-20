
import 'dart:developer';

import 'package:pro_quiz_pracme/question.dart';
int _quizNumber=0; 
class quizBrin{
  
  List<question> _listquiz=[
        question(q='Approximately one quarter of human bones are in the feet.', a=true),
        question(q='It is illegal to pee in the Ocean in Portugal', a=false),
        question(q='Buzz Aldrin\'s mother\'s maiden name was "Moon\".', a=false),
        question(q='No piece of square dry paper can be folded in half more than 7 times.', a= false),
        question(q='Buzz Aldrin\'s mother\'s maiden name was "sooon\".', a=true),
        question(q='Buzz Aldrin\'s mother\'s maiden name was "ssssssssssssss\".', a=false),
          question(q='Buzz Aldrin\'s mother\'s maiden name was "hhhhhhhh\".', a=true),
          question(q='Buzz Aldrin\'s mother\'s maiden name was "bbbbb\".', a=true),
      ];

    void nextQuestion(){
      if(_quizNumber<_listquiz.length-1 ){
        _quizNumber++;
      }
    }

      static set a(bool a) {}
      static set q(String q) {}
    String  getQuestinText(){
      return _listquiz[_quizNumber].quizNumber;
    }
    bool getAnswerText(){
      return _listquiz[_quizNumber].answer;

    }
}