import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center(
          child: Image.asset(
            'images/image1.png',
            fit: BoxFit.contain,//默认值
          ),
        ),
      ),
    );
  }
}

