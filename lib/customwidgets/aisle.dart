import 'package:flutter/material.dart';
import 'package:flutter_test_project/customwidgets/size_editor.dart';
import 'package:flutter_test_project/customwidgets/item.dart';

class Aisle extends StatefulWidget {
  double width;
  double height;
  Aisle(double width, double height) {
    this.width = width;
    this.height = height;
  }
  List<Item> items = [];
  void addItem(Item item) {
    items.add(item);
  }

  @override
  _AisleState createState() => _AisleState(width, height);
}

class _AisleState extends State<Aisle> {
  double xPos = 50;
  double yPos = 50;
  double width;
  double height;
  _AisleState(double width, double height) {
    this.width = width;
    this.height = height;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: yPos,
      left: xPos,
      child: GestureDetector(
        onPanUpdate: (tapInfo) {
          setState(() {
            xPos += tapInfo.delta.dx;
            yPos += tapInfo.delta.dy;
          });
        },
         child: Container(
              width: width,
              height: height,
              color: Colors.lightBlue,
            ),
        ),
    );
  }
}
