import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatioDemo'),
      ),
      body: new Container(
        // height: 200.0,
        child: new AspectRatio(
          aspectRatio: 1.5, //宽高比
          child: new Container(
            color: Colors.red,
          ),
        ),
      )
    );
  }
}