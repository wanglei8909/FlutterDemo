import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(TextWidget());

class TextWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '大家好 hello flutter hello flutter hello flutter hello flutter hello flutter',
              style: TextStyle(
                inherit: true,//为空值的时候，是否从祖先文本继承样式。（一般用在[TextSpan]树中）
                color: Colors.red,// 颜色
                fontSize: 20,//大小
                fontWeight: FontWeight.w700, //子重
                fontStyle: FontStyle.italic, //斜体
                letterSpacing: 10, //字间距 每个字（字母）
                wordSpacing: 20, //词间距
                textBaseline: TextBaseline.ideographic, // 基线，两个值，字面意思是一个用来排字母的，一人用来排表意字的（类似中文）
                height: 2,//行高 (比例值， 2就是2倍行高)
                // foreground: new Paint()..color = Colors.blueGrey,
                //与color的功能一样，多个文本时，缓存此Paint对象可以提高性能
                //注意：foreground和color不能同时使用
                // background: new Paint()..color = Colors.brown[300], //文本的背景画笔
                // shadows: [
                //   new Shadow(color: Color(0xFFFF0000), offset: Offset(2, 2), blurRadius: 1),
                //   new Shadow(color: Color(0xFF00FF00), offset: Offset(6, 6), blurRadius: 1)
                // ],//文本阴影
                decoration: TextDecoration.underline, //下划线  overline 上划线  lineThrough 中划线
                decorationStyle: TextDecorationStyle.double, //TextDecorationStyle.solid：实线;
                //TextDecorationStyle.double：两条线;
                //TextDecorationStyle.dotted：点虚线;
                //TextDecorationStyle.dashed：间隔虚线（比点要长）;
                //TextDecorationStyle.wave：波浪线
                //注意：一般情况下颜色与color一样 如果设置了foreground 则下划线的颜色与background一样
                //fontFamily: //指定字体
                //fontFamilyFallback: //字体列表，当前面的字体找不到时，会在这个列表里依次查找
              ),
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              softWrap: false,// 是否支持换行， false只有一行
              overflow: TextOverflow.ellipsis,//文本截断方式
              //TextOverflow.clip 在父节点区域内直接截断
              //TextOverflow.fade 末尾变透明
              //TextOverflow.ellipsis 末尾显示...
              //TextOverflow.visible  可以超出父节点，屏幕内截断
              textScaleFactor: 1.0, //缩放因子，字体大小随系统设置的大小变化，设置此值避免跟随系统设置的大小变化
              maxLines: 10, //最大行数
            ),
            SizedBox(height: 60,),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Hello",
                    style: TextStyle(color: Colors.blue,fontSize: 20),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      debugPrint('Hello');
                    },
                  ),
                  TextSpan(
                    text: "Flutter",
                    style: TextStyle(color: Colors.red,fontSize: 20),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      debugPrint('Flutter');
                    },
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}


