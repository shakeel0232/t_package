import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentIndicator {
  circularPercentIndicator(color,text,radius) {
    return  CircularPercentIndicator(
      radius: 60.0,
      lineWidth: 5.0,
      percent: 1.0,
      center: new Text("100%"),
      progressColor: Colors.green,
    );
  }
}
