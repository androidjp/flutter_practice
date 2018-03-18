import 'package:flutter/material.dart';


class AllKindOfLayoutPage extends StatefulWidget {

  AllKindOfLayoutPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  createState() => new AllKindOfLayoutState();

}

//横向布局
class AllKindOfLayoutState extends State<AllKindOfLayoutPage> {


  var line = new Container(color: Colors.green, width: 1000.0, height: 10.0,);

//  普通 横向排版
  Widget horizontalLayout = new Center(
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Image.asset('images/pic1.jpg'),
        new Image.asset('images/pic2.jpg'),
        new Image.asset('images/pic3.jpg'),
      ],
    ),
  );

//  普通 纵向排版
  Widget verticalLayout = new Center(
    child: new Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Image.asset('images/pic1.jpg'),
        new Image.asset('images/pic2.jpg'),
        new Image.asset('images/pic3.jpg'),
      ],
    ),
  );

  // 如果我一个元素需要占领两个空间 ， 这时候，用（Expanded widget）
  Widget expandedLayout = new Center(
    child: new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Expanded(child: new Image.asset('images/pic1.jpg')),
        new Expanded(
            flex: 4,
            child: new Image.asset('images/pic2.jpg')),
        new Expanded(child: new Image.asset('images/pic3.jpg')),
      ],
    ),
  );

//  defult 的 flex factor for Expanded widgets is 1.
  Widget fixOverflowImageLayout = new Center(
    child: new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Expanded(child: new Image.asset('images/pic1.jpg')),
        new Expanded(child: new Image.asset('images/pic2.jpg')),
        new Expanded(child: new Image.asset('images/pic3.jpg')),
      ],
    ),
  );

  var packedRow = new Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      new Icon(Icons.star, color: Colors.green[500]),
      new Icon(Icons.star, color: Colors.green[500]),
      new Icon(Icons.star, color: Colors.green[500]),
      new Icon(Icons.star, color: Colors.black),
      new Icon(Icons.star, color: Colors.black),
    ],
  );


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text(widget.title),),
        body: new ListView(
          children: <Widget>[
            horizontalLayout,
            line,
            verticalLayout,
            line,
            expandedLayout,
            line,
            fixOverflowImageLayout,
            line,
            packedRow,

          ],
        )
    );
  }
}
