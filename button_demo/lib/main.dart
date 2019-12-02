import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _raisedButtonClick() {
    print('raisedButtonClick');
  }

  void _flatButtonClick() {
    print('flatButtonClick');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: _raisedButtonClick, //点击事件
              onHighlightChanged: (value) {
                print(value.toString());
              },//高亮状态变化回调
              textColor: Colors.red, //文本颜色
              disabledTextColor: Colors.grey,//不可用文本颜色
              color: Colors.yellow,//背景颜色
              disabledColor: Colors.blueAccent,//不可用背景颜色
              highlightColor: Colors.deepOrange,//高亮背景颜色
              splashColor: Colors.pink,//水波纹颜色
              elevation: 3,//阴影
              highlightElevation: 7,
              disabledElevation: 5,
              animationDuration: Duration(milliseconds: 400),//阴影与形状的变化动画时间
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),//形状控制
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 120),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.favorite),
                    Text('RaisedButton')
                  ],
                ),
              ),
            ),
            FlatButton(
              onPressed: _flatButtonClick,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 120),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.favorite),
                    Text('RaisedButton')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
