import 'package:flutter/material.dart';
import 'package:layout_demo/ListNormalDemo.dart';
import 'package:layout_demo/ListBuilderDemo.dart';
import 'package:layout_demo/ListCustomDemo.dart';

class ListViewDemo extends StatefulWidget {
  ListViewDemo({Key key}) : super(key: key);

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {

  final List<Widget> tabsTitleWidgets = [
    Tab(child: Text('普通用法')),
    Tab(child: Text('builder')),
    Tab(child: Text('custom')),
  ];

  final List<Widget> tabsViewWidgets = [
    NormalList(),
    BuilderList(),
    CustomList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: DefaultTabController(
        length: tabsTitleWidgets.length,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.pink,
              child: TabBar(
                indicatorColor: Colors.purple,
                indicatorWeight: 4,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: tabsTitleWidgets,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: tabsViewWidgets,
              ),
            )
          ],
        )
      ),
    );
  }
}