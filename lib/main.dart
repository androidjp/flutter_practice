import 'package:flutter/material.dart';
import 'package:flutter_app/helloworld/helloworld_non_material_page.dart';
import 'package:flutter_app/sample2_call_layout/call_layout.dart';
import 'package:flutter_app/sample1_random_word/random_word.dart';

void main() => runApp(new MyApp());
//void main() => runApp(new NonMaterialApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//           primarySwatch: Colors.yellow,
//      ),
////      home: new MyHomePage(title: 'For Jasper\'s first flutter'),
////    sample1:
//      home:new RandomWords()
//    );

//    sample2:
    return new CallPage();

  }
}
