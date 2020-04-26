import 'package:flutter/material.dart';
import 'package:flutter_test_project/customwidgets/pfp.dart';

import '../config.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
      return Drawer(
          child: ListView(
            children: <Widget>[
              Pfp(),
              ListTile(
                  title: Text('Tile 1'),
                  onTap: () {
                    router.navigateTo(context, '/page_one');
                  }

              ),
              ListTile(
                  title: Text('Tile 2'),
                  onTap: () {
                    router.navigateTo(context, '/page_two');
                  }
              )
            ],
          )
      );
  }
}
