import 'package:flutter/material.dart';


class NonMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: new Center(
        child: new Text('Hello World',
            style: new TextStyle(fontSize: 40.0, color: Colors.black87)),
      ),
    );
  }
}