import 'package:flutter/material.dart';

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaddingDemo'),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(28.0),
        child: const Card(child: const Text('Hello World!')),
      )
    );
  }
}