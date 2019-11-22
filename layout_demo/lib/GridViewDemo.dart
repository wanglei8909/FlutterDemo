import 'package:flutter/material.dart';
import 'package:layout_demo/GridNormalDemo.dart';
import 'package:layout_demo/GridBuilderDemo.dart';

class GridViewDemo extends StatefulWidget {
  GridViewDemo({Key key}) : super(key: key);

  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {

  final List<Widget> tabsTitleWidgets = [
    Tab(child: Text('普通用法')),
    Tab(child: Text('builder')),
    // Tab(child: Text('custom')),
  ];

  final List<Widget> tabsViewWidgets = [
    NormalGrid(),
    BuilderGrid(),
    // CustomList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
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