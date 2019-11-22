import 'package:flutter/material.dart';

class NormalList extends StatelessWidget {

  const NormalList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(5),
          color: Colors.red,
          height: 50,
          child: Text(
            'one'
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(5),
          color: Colors.cyan,
          height: 50,
          child: Text(
            'two'
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(5),
          color: Colors.indigo,
          height: 50,
          child: Text(
            'three'
          ),
        ),
      ],
    );
  }
}