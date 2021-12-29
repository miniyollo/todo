import 'package:flutter/material.dart';
import 'package:flutter_app1/main.dart';

class important extends StatefulWidget {
  @override
  _importantState createState() => _importantState();
}

class _importantState extends State<important> {
  @override
  Widget build(BuildContext context) {
     return new Scaffold
      (
      appBar: new AppBar(
        title: new Text("imp page"),
      ),
      body: new Center(
        child: new Text("imp page"),
      ),
    );
  }
}

