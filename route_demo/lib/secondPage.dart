import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('second page'),
              SizedBox(height: 20,),
              RaisedButton(
                child: Text('返回上个页面'),
                onPressed: () {
                  Navigator.of(context).pop('返回给上个页面的内容');
                },
              )
            ],
          )
        ),
      ),
    );
  }
}