import 'package:flutter/material.dart';

class StatelessDemo extends StatelessWidget {

  StatelessDemo(this.num);

  final num;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(num),
    );
  }
}