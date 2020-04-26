import 'package:flutter_test_project/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_project/customwidgets/pfp.dart';
import 'package:flutter_test_project/customwidgets/sidebar.dart';


class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Sidebar(),
      appBar: new AppBar(
          title: Text('Homepage', style: TextStyle(color: Colors.white)),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.android))
          ],
          backgroundColor: Colors.lightBlue
      ),
      body: Container(
          child: Row()
      ),
    );
  }
}

