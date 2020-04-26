import 'package:flutter/material.dart';
import 'package:flutter_test_project/customwidgets/size_editor.dart';
import 'package:flutter_test_project/customwidgets/item.dart';

class Aisle extends StatefulWidget {
  double width;
  double height;
  double xPos;
  double yPos;

  Aisle(double width, double height, double xPos, double yPos) {
    this.width = width;
    this.height = height;
    this.xPos = xPos;
    this.yPos = yPos;
  }
  List<Item> items = [];
  void addItem(Item item) {
    items.add(item);
  }

  @override
  _AisleState createState() => _AisleState(width, height, xPos, yPos);
}

class _AisleState extends State<Aisle> {
  double xPos;
  double yPos;
  double width;
  double height;
  _AisleState(double width, double height, double xPos, double yPos) {
    this.width = width;
    this.height = height;
    this.xPos = xPos;
    this.yPos = yPos;
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
