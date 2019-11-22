import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContainerDemo'),
      ),
      body: Container(
        constraints: new BoxConstraints.expand(
          height:200.0,
        ),
        decoration: new BoxDecoration(
          border: new Border.all(width: 2.0, color: Colors.red),
          color: Colors.grey,
          borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
          image: new DecorationImage(
            image: new NetworkImage('http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg'),
            centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: new Text('Hello World',
          style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black)),
        transform: new Matrix4.rotationZ(0.3),
      ),
    );
  }
}