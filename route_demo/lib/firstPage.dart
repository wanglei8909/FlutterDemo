import 'package:flutter/material.dart';
import 'package:route_demo/secondPage.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

//构建跳转
  void _buildRouteAction(BuildContext context) {
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
      return new SecondPage();
    })).then((value)=>_handleValue(value));
  }
//命名跳转
  void _namedRouteAction(BuildContext context) {
    Navigator.pushNamed(context, "/secondPage").then((value)=>_handleNamedValue(value));
  }

  void _handleValue(String value) {
    debugPrint('_handleValue: ' + value);
  }

  void _handleNamedValue(String value) {
    debugPrint('_handleNamedValue: ' + value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first page'),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('first page'),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text('构建路由跳转'),
              onPressed: () {
                _buildRouteAction(context);
              },
            ),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text('命名路由跳转'),
              onPressed: () {
                _namedRouteAction(context);
              },
            ),
          ],
        )
      ),
    );
  }
}