// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_app1/home.dart';
import 'package:flutter_app1/important.dart';
import 'package:flutter_app1/fabbtton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  //bottomnavclass
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  // final List< Widget>_c=[
  //   cal(),
  // ];
  final List<Widget> _children = [
    page1(),
    important(),
  ];

  void OnTappedbar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      floatingActionButton: FloatingActionButton(
        //heroTag: 'fabbtton',
        //Floating action button on Scaffold
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TodoList())); // do something
        },
        child: Icon(Icons.add), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar: BottomNavigationBar(
        //bottom navigation bar on scaffold

        onTap: OnTappedbar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Important',
            backgroundColor: Colors.purpleAccent,
          )
        ],
        // shape: CircularNotchedRectangle(), //shape of notch
        //notchMargin: 5, //notche margin between floating button and bottom appbar
        //child: Row( //children inside bottom appbar
        //   mainAxisSize: MainAxisSize.max,
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //
        //   children: <Widget>[
        //
        //   ],
      ),
    );
  }
}
