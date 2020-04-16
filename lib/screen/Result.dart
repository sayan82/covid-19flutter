import 'package:flutter/material.dart';
import 'package:go_corona/Pages.dart';
import 'package:go_corona/screen/Riskrange.dart';

class Result extends StatelessWidget {
  final double resultscore;
  final Function reststatus;


  Result(this.resultscore,this.reststatus);
  String get resulttext{
    var rtext="";
    if(resultscore>=8 && resultscore<=10){
      rtext="VERY HIGH";
    }else if(resultscore>=6 && resultscore<8){
      rtext="HIGH";
    }else  if(resultscore>=4 && resultscore<6){
        rtext="MODERATE";
      }
    else if(resultscore>=2.5 && resultscore<4){
      rtext="LOW";
    }
    else{
      rtext="VERY LOW";
    }
    return rtext;
  }

  @override
  Widget build(BuildContext context) {
    void _gotoPages(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Pages()));
    }
    return Scaffold(
      backgroundColor: Color(0xFFf8efe9),
          body: SingleChildScrollView(
              child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    /* Text(
                      "QUIZ COMPLETE",
                      style: GoogleFonts.abel(textStyle: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,)),
                    ), */
                    SizedBox(height: 50,),
                    /* Text(
                      resulttext,
                      style: GoogleFonts.abel(textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                    textAlign: TextAlign.center,
                    ), */
                    Riskrange(textval: resulttext,value: resultscore),
                    SizedBox(height: 10,),
                    Text("Our Parameters: ",style:TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold),textAlign:TextAlign.center),
                    Text("Very Low,  Low , Moderate , High , Very High ",style:TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.bold),textAlign:TextAlign.center),
                    SizedBox(height: 20,),
                    RaisedButton(
                      onPressed: reststatus,
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
                            "Test Again",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 19,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    RaisedButton(
              onPressed: _gotoPages,
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
                    "Precautions",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
                    SizedBox(height:10),
                  ],
                ),
              ),
      ),
          ),
    );
  }
}
