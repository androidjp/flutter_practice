import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  @override
  createState() => new CallPageState();

}

class CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    // ----------------------------------------------
    // 主题部分
    // ----------------------------------------------

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
          children: [
            new Expanded(
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Container(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: new Text(
                          '这是Lake',
                          style: new TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      new Text('中国, 广东', style: new TextStyle(
                          color: Colors.grey[500]
                      ),)
                    ]
                )
            ),
            new Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            new Text('41')
          ]
      ),
    );

//    封装一个 创建自定义button（上面icon，下面文本） 的 方法
    Column buildButtonColumn(IconData icon, String label) {
//      获取上下文的color
      Color color = Theme
          .of(context)
          .primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color,),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: color
              ),
            ),
          )
        ],
      );
    }


// ----------------------------------------------
// 菜单部分
// ----------------------------------------------

    Widget buttonSection = new Container(
      child: new Row(
//         MainAxisAlignment.spaceEvenly 表示对于这一行每一个column，都留一定的间隙
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

// ----------------------------------------------
// 内容介绍部分
// ----------------------------------------------

    Widget contentSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
        Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );


// ----------------------------------------------
// 最终拼接起来
// ----------------------------------------------

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('西湖一日游'),
      ),
      body: new ListView(
        children: <Widget>[
          new Image.asset(
            'images/lake.jpg',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          contentSection
        ],
      ),
    );
  }

}