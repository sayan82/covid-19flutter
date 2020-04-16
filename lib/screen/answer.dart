import 'package:flutter/material.dart';
import 'package:flutter_progress_button/flutter_progress_button.dart';

class Answer extends StatelessWidget {
  final Function  selectans;
  final String answertext;
  Answer(this.selectans,this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      //color: Colors.red,
      child:  ProgressButton(
                                  defaultWidget: Text(answertext, style:TextStyle(color: Colors.black,fontSize:15),textAlign:TextAlign.center),
                                  animate: true,
                                  onPressed: selectans,
                                  height: 45,
                                  width: MediaQuery.of(context).size.width*.9,
                                  borderRadius: 20.0,
                                  type: ProgressButtonType.Outline,
                                  color: Colors.purple,
                                ),
    );
  }
}