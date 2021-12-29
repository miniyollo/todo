// @dart=2.9
import 'package:flutter/material.dart';

//import 'package:flutter_app1/cal.dart';
import 'package:flutter_app1/hi.dart';

import 'cal.dart';

class page1 extends StatefulWidget {
  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("home page"),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_return),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.calendar_today_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => cal())); // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.list,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => hi())); // do something
              },
            ),
          ],
        ),
        body: Center(
          child: Text("home page"),
        ));
  }
}
