import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.custom(
      childrenDelegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            height: 50.0,
            alignment: Alignment.center,
            color: Colors.lightBlue[100 * (index % 9)],
            child: Text('list item $index'),
          );
        },
        childCount: 30,
        addAutomaticKeepAlives: true,//出屏幕外，是否保持子控件的状态。默认true
        addRepaintBoundaries: true,//出屏幕外，是否重绘。默认true
      ),
    );
  }
}