import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  final String questext;
  Question(this.questext);
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(20),
      // height: MediaQuery.of(context).size.height *.2,
      width: MediaQuery.of(context).size.width,
     // margin: EdgeInsets.all(10),
      //color: Colors.amber,
      child: Text(
        questext,style:GoogleFonts.abel(textStyle: TextStyle(fontSize: 30,color: Colors.red)),
        textAlign: TextAlign.center,
      ),
    );
  }
}