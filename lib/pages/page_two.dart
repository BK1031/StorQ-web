import 'package:flutter/material.dart';
import 'package:flutter_test_project/config.dart';
import 'package:flutter_test_project/customwidgets/pfp.dart';
import 'package:flutter_test_project/customwidgets/sidebar.dart';
import 'package:flutter_test_project/customwidgets/aisle.dart';

//Layout editor

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  double width = 15;
  double height = 100;
  double xPos = 20;
  double yPos = 50;
  List<Widget> aisles = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer : new Sidebar(),
      appBar: new AppBar(
          title: Text('Homepage', style: TextStyle(color: Colors.white)),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.android))
          ],
          backgroundColor: Colors.lightBlue
      ),
      floatingActionButton: new FloatingActionButton(onPressed: () {
        setState(() {
          int counter = 0;
          aisles.add(Aisle(width, height, xPos, yPos));
        });
      }),
      body: Stack(
        children: aisles
      )
    );
  }
}
