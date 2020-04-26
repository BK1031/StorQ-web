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
          title: Text('Store Layouts', style: TextStyle(color: Colors.white)),
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
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        children: <Widget>[
          InkWell(
            onTap: () {
              router.navigateTo(context, '/layout-one');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: const Text('Walmart Evergreen',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                      fontFamily: "Roboto",
                      fontSize: 54)
                  )
              ),
              color: Colors.lightBlue[600],
            ),
          ),
          InkWell(
            onTap: () {
              router.navigateTo(context, '/layout-two');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: const Text('Walmart DTSJ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontFamily: "Roboto",
                          fontSize: 54)
                  )
              ),
              color: Colors.lightBlue[600],
            ),
          ),
          InkWell(
            onTap: () {
              router.navigateTo(context, '/layout-3');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: const Text('Walmart Cupertino',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontFamily: "Roboto",
                          fontSize: 54)
                  )
              ),
              color: Colors.lightBlue[600],
            ),
          ),
          InkWell(
            onTap: () {
              router.navigateTo(context, '/layout-3');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: const Text('Walmart Fremont',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontFamily: "Roboto",
                          fontSize: 54)
                  )
              ),
              color: Colors.lightBlue[600],
            ),
          ),
          InkWell(
            onTap: () {
              router.navigateTo(context, '/layout-3');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: const Text('Walmart Palo Alto',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontFamily: "Roboto",
                          fontSize: 54)
                  )
              ),
              color: Colors.lightBlue[600],
            ),
          ),
          InkWell(
            onTap: () {
              router.navigateTo(context, '/layout-3');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: const Text('Walmart San Francisco',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontFamily: "Roboto",
                          fontSize: 54)
                  )
              ),
              color: Colors.lightBlue[600],
            ),
          ),
          InkWell(
            onTap: () {
              router.navigateTo(context, '/layout-3');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: const Text('Walmart Richmond',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontFamily: "Roboto",
                          fontSize: 54)
                  )
              ),
              color: Colors.lightBlue[600],
            ),
          ),
          InkWell(
            onTap: () {
              router.navigateTo(context, '/layout-3');
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: const Text('Walmart Sunnyvale',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontFamily: "Roboto",
                          fontSize: 54)
                  )
              ),
              color: Colors.lightBlue[600],
            ),
          ),

        ],
      )
    );
  }
}

