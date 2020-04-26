import 'package:flutter/material.dart';
import 'package:flutter_test_project/config.dart';
import 'package:flutter_test_project/customwidgets/pfp.dart';
import 'package:flutter_test_project/customwidgets/sidebar.dart';
import 'package:fluro/fluro.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: Text('Homepage', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.lightBlue,
          actions: <Widget>[
            FlatButton(onPressed: () {
              router.navigateTo(context, '/login');
            },
                child: Text("Log In", style: TextStyle(color: Colors.white)),
            ),
            FlatButton(onPressed: () {
              router.navigateTo(context, '/sign_up');
            },
              child: Text("Sign Up", style: TextStyle(color: Colors.white)),
            ),
          ],
      ),
      drawer: new Sidebar(),
      body: Container(
        child: Row()
      ),
    );
  }
}
