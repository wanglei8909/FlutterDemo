import 'package:flutter/material.dart';
import 'package:statelesswidget_demo/stateless_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  final Color textColor = Colors.red;

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  num _count = 1;

  void _increment(){
    setState(() {
      _count ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build');
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("Widget -- StatelessWidget"),),
          body: Center(
              child: StatelessDemo(_count.toString()),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _increment,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        )
    );
  }
}