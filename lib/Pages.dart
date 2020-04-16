import 'package:flutter/material.dart';
import 'package:go_corona/LastPage.dart';
import 'package:go_corona/QuizPage.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class Pages extends StatefulWidget {

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  final pageList = [
    PageViewModel(
        pageColor: const Color(0xFFfddcd7),
        bubble: Image.asset('lib/assets/icons/hand.png'),
        body: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Text('Wash your hands with a Soap and water or alcohol-based hand sanitizer Frequently.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
              SizedBox(height: 5),
              Text('Washing your hands with soap and water or using alcohol-based hand rub kills viruses that may be on your hands.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,

                      ),
                    ),
            ],
          ),
        ),
        title: Text(
            'Wash Hands',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        mainImage: Image.asset(
          'lib/assets/Wash_Hand.gif',
          height: 200.0,
          width: 285.0,
          alignment: Alignment.center,
        )
    ),
    PageViewModel(
        pageColor: const Color(0xFFc4c4c4),
        // iconImageAssetPath: 'assets/air-hostess.png',
        bubble: Image.asset('lib/assets/icons/distancing.png'),
        body: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Text('Maintain at least 1 metre (3 feet) distance between yourself anyone who is coughing or sneezing.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:20.0,
                          fontStyle: FontStyle.italic,

                        )
                    ),
              SizedBox(height:5),
              Text('When someone coughs or sneezes they spray small liquid droplets from their nose or mouth which may contain virus.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,

                        )
                    ),
            ],
          ),
        ),
        title: Text(
          'Social Distancing',
          textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
          ),
        mainImage: Image.asset(
          'lib/assets/distancing.jpg',
          height: 200.0,
          width: 285.0,
          alignment: Alignment.center,
        )
    ),
    PageViewModel(
        pageColor: const Color(0xFFbbdddc),
        // iconImageAssetPath: 'assets/air-hostess.png',
        bubble: Image.asset('lib/assets/icons/face.png'),
        body:  SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Text('Hands touch many surfaces and can pick up viruses.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(20, 156, 150,1),
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
              SizedBox(height: 15),
              Text('Once contaminated, hands can transfer the virus to your eyes, nose or mouth. From there, the virus can enter your body and can make you sick.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(20, 156, 150,1),
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
            ],
          ),
        ),
        title: Text(
          "Don't touch your face",
          textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(20, 156, 150,1),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
        ),
        mainImage: Image.asset(
          'lib/assets/Mouth.jpg',
          height: 200.0,
          width: 285.0,
          alignment: Alignment.center,
        )
    ),
    PageViewModel(
        pageColor: const Color(0xFFf3dfcb),
        // iconImageAssetPath: 'assets/air-hostess.png',
        bubble: Image.asset('lib/assets/icons/doctor.png'),
        body:  SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Text('If you have a fever,cough and difficulty in breathing,seek medical attention and call in advance.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(144, 84, 60,1),
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
              SizedBox(height: 5),
              Text('Follow the directions of your local health authority.This will protect you and help prevent spread of viruses.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(144, 84, 60,1),
                      fontSize:20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
            ],
          ),
        ),
        title: Text(
          "Consult Doctor",
          textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(144, 84, 60,1),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
        ),
        mainImage: Image.asset(
          'lib/assets/fever.gif',
          height: 200.0,
          width: 285.0,
          alignment: Alignment.center,
        )
    ),
    PageViewModel(
        pageColor: const Color(0xFFf8efe9),
        // iconImageAssetPath: 'assets/air-hostess.png',
        bubble: Image.asset('lib/assets/icons/home.png'),
        body:  SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Text('Stay Safe,Stay Alive. If you go out of your house it may be possible you may contact with infected People.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(104,106,195,1),
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                      ),
              ),
              SizedBox(height: 5),
              Text('From that you will be infected.So break the Chain and try to avoid Crowded places',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(104,106,195,1),
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                      ),
              ),
            ],
          ),
        ),
        title: Text(
          "Stay Home",
          textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(104,106,195,1),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
        ),
        mainImage: Image.asset(
          'lib/assets/Stay_Home.gif',
          height: 200.0,
          width: 285.0,
          alignment: Alignment.center,
        )
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Pass pageList and the mainPage route.
      body: IntroViewsFlutter(
          pageList,
          skipText: Text("Test Again",style: TextStyle(color:Colors.black,fontSize: 15),),
          doneText: Text("Done",style: TextStyle(color:Colors.black),),
          onTapDoneButton: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => LastPage()));
          },
          onTapSkipButton: (){
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => QuizPage()),);
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
    );
  }
}