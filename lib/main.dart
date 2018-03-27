import 'package:flutter/material.dart';
import 'package:flutter_app/helloworld/helloworld_material_page.dart';
import 'package:flutter_app/sample2_call_layout/call_layout.dart';
import 'package:flutter_app/sample3_my_home_page/all_kind_of_layout.dart';
import 'package:flutter_app/sample1_random_word/random_word.dart';
import 'package:flutter_app/sample3_my_home_page/my_home_page.dart';
import 'package:flutter_app/sample4_movie/list/movie_list_page.dart';

void main() => runApp(new MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
           primarySwatch: Colors.orange,
      ),
//      Hello world
//      home: new MyHomePage(title: 'For Jasper\'s first flutter'),
//    sample1:
//      home:new RandomWords()
//    sample2:
//        home:new CallPage()
//    sample3
//      home: new AllKindOfLayoutPage(title:'各种布局方式')
//    sample4: a complex layout home page
//        home: new ComplexHomePage(title:'一个更复杂的布局例子')
//    sample5: a movie list
        home: new MovieListPage(),
    );

  }
}

