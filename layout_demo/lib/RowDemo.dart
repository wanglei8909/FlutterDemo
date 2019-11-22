import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RowDemo'),
      ),
      body: Container(
        height: 60,
        child: Row(
          children: <Widget>[
            SizedBox(width: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('BTC',textScaleFactor:1, style: new TextStyle(color: Color(0xFF121929), fontSize: 18)),
                    Text(' / usdt', textScaleFactor:1,style: new TextStyle(color: Color(0xFF9EA6B6), fontSize: 12)),
                  ],
                ),
                Text('99999',textScaleFactor:1, style: new TextStyle(color: Color(0xFF9EA6B6), fontSize: 12)),
              ],
            ),
            Expanded(child: Container(),),
            Column(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: <Widget>[
                Text('88888',textScaleFactor:1,style: new TextStyle(color: Color(0xFF121929), fontSize: 18, fontWeight: FontWeight.w500)),
                Text('66666',textScaleFactor:1, style: new TextStyle(color: Color(0xFF9EA6B6), fontSize: 12, fontWeight: FontWeight.w500))
              ],
            ),
            SizedBox(width: 20,),
            SizedBox(
              width: 80,
              child: Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: new BorderRadius.all(Radius.circular(3)),
                ),
                child: Center(
                  child: Text(
                    '+20%',
                    textScaleFactor:1,
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                )
              ),
            ),
            SizedBox(width: 15,),
          ],
        ),
      ),
    );
  }
}