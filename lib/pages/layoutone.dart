import 'package:flutter/material.dart';
import 'package:flutter_test_project/customwidgets/aisle.dart';

import '../config.dart';

class Layoutone extends StatefulWidget {
  @override
  _LayoutoneState createState() => _LayoutoneState();
}

class _LayoutoneState extends State<Layoutone> {
  List<Aisle> aisles = [];
  @override
  void initState() {
    aisles.add(Aisle(50, 300, 50, 70));
    aisles.add(Aisle(50, 300, 50, 470));
    aisles.add(Aisle(50, 300, 250, 70));
    aisles.add(Aisle(50, 300, 250, 470));
    aisles.add(Aisle(50, 300, 450, 70));
    aisles.add(Aisle(50, 300, 450, 470));
    aisles.add(Aisle(50, 300, 650, 70));
    aisles.add(Aisle(50, 300, 650, 470));
    aisles.add(Aisle(50, 300, 850, 70));
    aisles.add(Aisle(50, 300, 850, 470));
    aisles.add(Aisle(50, 300, 1050, 70));
    aisles.add(Aisle(50, 300, 1050, 470));
    aisles.add(Aisle(50, 300, 1250, 70));
    aisles.add(Aisle(50, 300, 1250, 470));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Homepage', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.lightBlue,
          actions: <Widget>[
            FlatButton(onPressed: () {
              router.navigateTo(context, '/page_one');
            },
              child: Text("Log Out", style: TextStyle(color: Colors.white)),
              color: Colors.red
            ),
          ],
        ),
        floatingActionButton: new FloatingActionButton(onPressed: () {
          setState(() {
            int counter = 0;
            aisles.add(Aisle(50, 300, 1550, 70));
          });
        }),
        body: Stack(
          children: aisles
        )
    );
  }
}
