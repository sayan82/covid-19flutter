import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Riskrange extends StatefulWidget {
  final String textval;
  final double value;
  Riskrange({this.textval,this.value});

  @override
  _RiskrangeState createState() => _RiskrangeState();
}

class _RiskrangeState extends State<Riskrange> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height*.4,
        width: MediaQuery.of(context).size.width,
        child: SleekCircularSlider(
                appearance: CircularSliderAppearance(
                infoProperties: InfoProperties(
                  mainLabelStyle: TextStyle(color: Colors.blue,fontSize: 1),
                  modifier:_percentageModifier,
                  bottomLabelText: widget.textval,
                  bottomLabelStyle: TextStyle(color: Colors.red,fontSize: 27),
                  ),
                customColors: CustomSliderColors(
                  progressBarColors: [Colors.red,Colors.yellow,Colors.green],
                  dotColor: Colors.transparent,
                ),
                customWidths: CustomSliderWidths(progressBarWidth: 20,trackWidth:20)),
                min: 0,
                max: 100,
                initialValue: widget.value*10,
              ),
    );
  }
  String _percentageModifier(double value) {
    final roundedValue = (value).ceil().toInt().toString();
    return '$roundedValue ';
  }
}