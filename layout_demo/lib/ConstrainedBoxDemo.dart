import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  const ConstrainedBoxDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBoxDemo'),
      ),
      body: new ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 100.0,
          minHeight: 100.0,
          maxWidth: 150.0,
          maxHeight: 150.0,
        ),
        child: new Container(
          width: 20.0,
          height: 20.0,
          color: Colors.red,
        ),
      )
    );
  }
}