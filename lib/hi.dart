// @dart=2.9
import 'package:flutter/material.dart';

class hi extends StatefulWidget {
  @override
  _listsState createState() => _listsState();
}

class _listsState extends State<hi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        title: new Text("list page"),
      ),
      body: new Center(
        child: new Text("list page"),
      ),
    );
  }
}