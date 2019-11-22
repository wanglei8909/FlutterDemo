import 'package:flutter/material.dart';
import 'dart:math';

class BuilderGrid extends StatelessWidget {
  const BuilderGrid({Key key}) : super(key: key);

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
    return GridView.builder(
      itemCount: 15,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index){
        return Container(
          alignment: Alignment.center,
          color: getRandomColor(),
          child: Text('grid item $index'),
        );
      },
    );
  }
}