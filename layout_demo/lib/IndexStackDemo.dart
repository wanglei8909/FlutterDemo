import 'package:flutter/material.dart';

class IndexStackDemo extends StatefulWidget {
  IndexStackDemo({Key key}) : super(key: key);

  @override
  _IndexStackDemoState createState() => _IndexStackDemoState();
}

class _IndexStackDemoState extends State<IndexStackDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStackDemo'),
      ),
      body: IndexedStack(
        index: 1,
        alignment: const Alignment(0.6, 0.6),
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/pic.jpg'),
            radius: 100.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              '蜡笔小新',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      )
    );
  }
}