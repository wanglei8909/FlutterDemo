import 'package:flutter/material.dart';

class BuilderList extends StatelessWidget {
  const BuilderList({Key key}) : super(key: key);

  final List<String> titleList = const [
    '1','2','3','4','5','6','7','8','9','10'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: titleList.length,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Text(titleList[index]),
        );
      },
    );
  }
}