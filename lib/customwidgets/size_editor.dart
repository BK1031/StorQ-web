import 'package:flutter/material.dart';

class SizeEditor extends StatefulWidget {
  double width = 150;
  double height = 150;

  getWidth() {
    return width;
  }

  getHeight() {
    return height;
  }

  @override
  _SizeEditorState createState() => _SizeEditorState();
}

class _SizeEditorState extends State<SizeEditor> {
  final control = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    control.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: TextField(
        controller: control,
        onSubmitted: (value) {
          //width = value;
        },
      ),
    );
  }
}
