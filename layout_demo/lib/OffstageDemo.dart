import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OffstageDemo extends StatefulWidget {
  OffstageDemo({Key key}) : super(key: key);

  @override
  _OffstageDemoState createState() => _OffstageDemoState();
}

class _OffstageDemoState extends State<OffstageDemo> {
  bool offstage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OffstageDemo'),
      ),
      body: Column(
        children: <Widget>[
          new Offstage(
            offstage: offstage,
            child: Container(color: Colors.yellowAccent, height: 100.0),
          ),
          new CupertinoButton(
            child: Text("点击切换显示"),
            onPressed: () {
              setState(() {
                offstage = !offstage;
              });
            },
          ),
        ],
      )
    );
  }
}
