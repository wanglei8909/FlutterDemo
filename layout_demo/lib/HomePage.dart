import 'package:flutter/material.dart';
import 'package:layout_demo/ContainerDemo.dart';
import 'package:layout_demo/PaddingDemo.dart';
import 'package:layout_demo/AspectRatioDemo.dart';
import 'package:layout_demo/ConstrainedBoxDemo.dart';
import 'package:layout_demo/OffstageDemo.dart';
import 'package:layout_demo/RowDemo.dart';
import 'package:layout_demo/StackDemo.dart';
import 'package:layout_demo/IndexStackDemo.dart';
import 'package:layout_demo/ListViewDemo.dart';
import 'package:layout_demo/GridViewDemo.dart';

class MyHomePage extends StatelessWidget {

  final List titleList = [
    'ContainerDemo','PaddingDemo','AspectRatioDemo',
    'ConstrainedBoxDemo','OffstageDemo','RowDemo',
    'StackDemo','IndexStackDemo','ListViewDemo','GridViewDemo'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('布局widget demo',),
        ),
        body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(titleList[index]),
              onTap: (){
                navigatorToDemo(context,index);
              },
            );
          },
        ),
      ),
    );
  }

  void navigatorToDemo(BuildContext context, int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      if (index == 0) {
        return ContainerDemo();
      }else if (index == 1) {
        return PaddingDemo();
      }else if (index == 2) {
        return AspectRatioDemo();
      }else if (index == 3) {
        return ConstrainedBoxDemo();
      }else if (index == 4) {
        return OffstageDemo();
      }else if (index == 5) {
        return RowDemo();
      }else if (index == 6) {
        return StackDemo();
      }else if (index == 7) {
        return IndexStackDemo();
      }else if (index == 8) {
        return ListViewDemo();
      }else if (index == 9) {
        return GridViewDemo();
      }
      return Container();
    }));
  }
}
