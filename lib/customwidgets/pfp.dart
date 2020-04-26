import 'package:flutter/material.dart';

class Pfp extends StatefulWidget {
  @override
  _PfpState createState() => _PfpState();
}

class _PfpState extends State<Pfp> {
  final double width = 180;
  final double height = 180;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: ClipRRect(key: Key("image"), child: Image.network("https://i.ytimg.com/vi/qHYuA8kqlSY/maxresdefault.jpg", width: this.width, height: this.height, fit: BoxFit.cover),
                borderRadius: new BorderRadius.all(Radius.circular(120.0)),
              ),
            ),
            Text('Kashyap Chaturvedula', style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.w900))
          ],
        )
    );
  }
}
