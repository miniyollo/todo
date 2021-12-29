// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_app1/main.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class cal extends StatefulWidget {
  @override
  _importantState createState() => _importantState();
}

class _importantState extends State<cal> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
      appBar: new AppBar(
        title: new Text("cal page"),
      ),
      body: SfCalendar(),
      );

  }
}

