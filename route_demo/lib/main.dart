import 'package:flutter/material.dart';
import 'package:route_demo/firstPage.dart';
import 'package:route_demo/secondPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Demo',
      routes: {
        '/' : (BuildContext context)=> new FirstPage(), //  '/'表示首页，可以不用再写home属性
        '/secondPage' : (BuildContext context)=> new SecondPage(),
      },
      // home: FirstPage(),
    );
  }
}

