import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  final Color textColor = Colors.red;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    debugPrint('createState');
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String _content = 'helo world';

  void _increment(){
    setState(() {
      _content += "d";
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build');
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("Widget -- StatefulWidget及State"),),
          body: Center(
              child: GestureDetector(
                child: Text(_content, style: new TextStyle(color: this.widget.textColor)),
                onTap: _increment,
              )
          ),
        )
    );
  }

  void logContext() {
    debugPrint(this.context.toString());
  }

  @override
  void initState() {
    // TODO: implement initState
    debugPrint('initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    debugPrint('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(MyApp oldWidget) {
    // TODO: implement didUpdateWidget
    debugPrint('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    debugPrint('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    debugPrint('dispose');
    super.dispose();
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    debugPrint('reassemble');
    super.reassemble();
  }

}