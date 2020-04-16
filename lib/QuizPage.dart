import 'package:flutter/material.dart';
import 'package:go_corona/screen/Result.dart';
import 'package:go_corona/screen/quiz.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var questions = [
    {
      'Qtext': "Your age ?",
      'Atext': [
        {'text': 'Under 20', 'score':1},
        {'text': '20-40', 'score': .5},
        {'text': 'Above 40', 'score': 2},
      ],
    },
    {
      'Qtext': "Please Choose your gender.",
      'Atext': [
        {'text': 'Male', 'score': 0},
        {'text': 'Female', 'score': 0},
        {'text': 'Others', 'score': 0},
      ],
    },
    {
      'Qtext': "Your Current body temperature?",
      'Atext': [
        {'text': 'Normal(96 F - 98.6 F)', 'score': 0},
        {'text': 'Fever(98.7 F - 102 F)', 'score': 1},
        {'text': 'High Fever(>102 F)', 'score': 2},
      ],
    },
    {
      'Qtext': "Are you facing any of these Symptoms?",
      'Atext': [
        {'text': 'Dry Cough', 'score': 1},
        {'text': 'Sore Throat', 'score': 1},
        {'text': 'Weakness', 'score': 1},
        {'text': 'None of these', 'score': 0}
      ],
    },
    {
      'Qtext': "Other Symptoms Like-- ",
      'Atext': [
        {'text': 'Feeling Breathless', 'score': 1},
        {'text': 'Difficulty in Breathing', 'score': 2},
        {'text': 'Pain in Chest', 'score': 1},
        {'text': 'None Of these', 'score': 0}
      ],
    },
    {
      'Qtext': "Your Travell Details or History-",
      'Atext': [
        {"text":'No Travell History','score':0},
        { 'text':'Travelled affected area in last 30 days','score':1},
        {'text': 'Close Contact with Covid 19 patient', 'score': 2},
      ]
    },
    {
      'Qtext': "Do you have any History of these problems?",
      'Atext': [
        {"text":'High Blood Pressure','score':1},
        { 'text':'Diabetes','score':1},
        {'text': 'Heart or kidney or Lung Disease', 'score': 1},
        { 'text':'None of These','score':0},
      ]
    }
  ];
  var idx = 0;
  double totalscore=0;
  void resetQuiz(){
    setState(() {
      idx=0;
      totalscore=0;
    });
  }

  void answerQ(var scr) {
    totalscore=totalscore+scr;
    setState(() {
      idx = idx + 1;
    });
    print(idx);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF21BFBD),
          appBar: AppBar(
            title: Text(
              "Check your Status",
              style: GoogleFonts.abel(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),
            ),
            centerTitle: true,
            backgroundColor: Color(0xFFf8efe9),
            elevation: 0.0,
          ),
          body: (idx < questions.length)
              ? Quiz(
                  answerQuesfunc: answerQ,
                  index: idx,
                  question: questions,
                )
              : Result(totalscore,resetQuiz));
  }
}