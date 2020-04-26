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
                  title: Text('Store Layouts'),
                  onTap: () {
                    router.navigateTo(context, '/page_one');
                  }

              ),
              ListTile(
                  title: Text('Item Manager'),
                  onTap: () {
                    router.navigateTo(context, '/page_two');
                  }
              )
            ],
          )
      );
  }
}
