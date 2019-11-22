import 'package:flutter/material.dart';
import 'dart:math';

class NormalGrid extends StatelessWidget {
  const NormalGrid({Key key}) : super(key: key);

  Color getRandomColor() {
    return Color.fromARGB(
      255,
      Random.secure().nextInt(255),
      Random.secure().nextInt(255),
      Random.secure().nextInt(255)
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      children: <Widget>[
        Container(
          color: getRandomColor(),
        ),
        Container(
          color: getRandomColor(),
        ),
        Container(
          color: getRandomColor(),
        ),
        Container(
          color: getRandomColor(),
        ),
        Container(
          color: getRandomColor(),
        ),
        Container(
          color: getRandomColor(),
        ),
        Container(
          color: getRandomColor(),
        ),
        Container(
          color: getRandomColor(),
        ),
        Container(
          color: getRandomColor(),
        ),
      ],
    );
  }
}