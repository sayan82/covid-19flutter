import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';
class LastPage extends StatefulWidget {
  @override
  _LastPageState createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8efe9),
      appBar: GradientAppBar(
        title:Text("Useful Links"),
        centerTitle: true,
        gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
      ),
      body: Center(
        child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Visit this pages to get more info about COVID 19",style:TextStyle(fontSize: 25),textAlign: TextAlign.center,),
              Text("Time for Opening these pages Depends upon your internet speed!",style:TextStyle(fontSize: 20),textAlign:TextAlign.center),
              SizedBox(height: 20),
              RaisedButton(
              onPressed: _launchURL,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 60.0),
                  alignment: Alignment.center,
                  child: Text(
                    "WHO",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
              SizedBox(height: 20),
              RaisedButton(
              onPressed: _launchURLone,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 60.0),
                  alignment: Alignment.center,
                  child: Text(
                    "India Info",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                        color: Colors.white
                    ),
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
  Future<void>_launchURL() async {
  const url='https://www.who.int/emergencies/diseases/novel-coronavirus-2019';
  if (await canLaunch(url)) {
    await launch(url,
    forceSafariVC: true,
    forceWebView: true,
    headers: <String,String>{'header_key':'header_value'}
    );
  } else {
    throw 'Could not launch $url';
  }
}
 Future<void> _launchURLone() async {
  const url='https://www.mohfw.gov.in/';
  if (await canLaunch(url)) {
      await launch(url,
    forceSafariVC: true,
    forceWebView: true,
    headers: <String,String>{'header_key':'header_value'}
      );
  } else {
    throw 'Could not launch $url';
  }
}
}