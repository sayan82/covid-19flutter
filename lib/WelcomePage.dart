import 'package:flutter/material.dart';
import 'package:go_corona/QuizPage.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var isPortrait=MediaQuery.of(context).orientation == Orientation.portrait;
    return Stack(
          children: <Widget>[
          new Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration:new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("lib/assets/welcomepage.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Welcome",style:TextStyle(fontSize:25)),
          centerTitle: true,
          backgroundColor:Colors.transparent,
          elevation: 0.0,
        ),
        body:(isPortrait)?Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
              MaterialButton(
                height: (isPortrait)?MediaQuery.of(context).size.height*.08:MediaQuery.of(context).size.height*.15,
                minWidth: MediaQuery.of(context).size.width*.9,
                onPressed: navigateQuiz,
                child: Text("Lets Begin!",style:TextStyle(color: Colors.white,fontSize:20)),
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              ),
          ],
                  ),
        ):Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
              MaterialButton(
                height: MediaQuery.of(context).size.height*.15,
                minWidth: MediaQuery.of(context).size.width*.9,
                onPressed: navigateQuiz,
                child: Text("Lets Begin",style:TextStyle(color: Colors.white,fontSize:20)),
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              ),
          /*  RaisedButton(
              onPressed: navigateSignin,
              child: Text("Log In"),
              ) */
          ],
                  ),
        ),
      ),
          ],
    );
  }
  void navigateQuiz(){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>QuizPage()));
  }
}