import 'package:flutter/material.dart';
import 'package:go_corona/screen/answer.dart';
import 'package:go_corona/screen/ques.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerQuesfunc;
  final int index;
  Quiz({
          @required this.question,
          @required this.answerQuesfunc,
          @required this.index
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8efe9),
          body: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height*.8,
                          width: MediaQuery.of(context).size.width,
          //color: Colors.blue,
                          child: SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                        Question(question[index]['Qtext']),
                                        ...(question[index]['Atext'] as List<Map<String,Object>>).map((answer) {
                                          return SingleChildScrollView(child: Answer(()=>answerQuesfunc(answer['score']), answer['text']));
                                        }).toList(),
                                      ],
                                ),
                          ),
                        ),
                      ),
                    ],
                ),
                  ),
          ),
    );
  }
}
