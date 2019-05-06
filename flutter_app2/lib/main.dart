import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Test'),
        ),
        body: Column(
          /*
          *
          CrossAxisAlignment.star：居左对齐。
          CrossAxisAlignment.end：居右对齐。
          CrossAxisAlignment.center：居中对齐。

          主轴和副轴的辨识:
在设置对齐方式的时候你会发现右mainAxisAlignment属性，意思就是主轴对齐方式，那什么是主轴，什么又是幅轴那。
main轴：如果你用column组件，那垂直就是主轴，如果你用Row组件，那水平就是主轴。
cross轴：cross轴我们称为幅轴，是和主轴垂直的方向。比如Row组件，那垂直就是幅轴，Column组件的幅轴就是水平方向的。
          * */
          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(child: Text('aslkjflajf')) ,
            Center(child: Text('是开放空间积分空数据发卡机 按实际福建省的叫法今飞凯达科技')),
            Center(child: Text('sjflj雷克萨解放军垃圾卡萨丁见附件啊ufuouqwhwoudfNlkjf'))
          ],

        ),


      ),
    );
  }
}

//void main() {
//  runApp(
//    new Center(
//      child: new Text(
//        'Hello World',
//        textDirection: TextDirection.ltr,
//      ),
//    ),
//  );
//
//}

//void ExpandedDemo (){
//  return MaterialApp(
//    title: 'Flutter Demo',
//    debugShowCheckedModeBanner: false,
//    theme: ThemeData(
//      primarySwatch: Colors.orange,
//    ),
//    home: new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Test'),
//      ),
//      body: new Row(
//        children: <Widget>[
//          Expanded(child: new RaisedButton(
//            onPressed: (){
//
//            },
//            color: Colors.red[400],
//            child: new Text('button 1'),
//          )),
//          Expanded(child: new RaisedButton(
//            onPressed: (){
//
//            },
//            color: Colors.orange[500],
//            child: new Text('button 2'),
//          )),
//          Expanded(child: new RaisedButton(
//            onPressed: (){
//
//            },
//            color: Colors.yellow[200],
//            child: new Text('button 3'),
//          )),
//
//          new Image.asset(
//            'images/car.jpg',
//            height: 240.0,
//            fit: BoxFit.cover,
//          ),
//        ],
//
//      ),
//
//
//    ),
//  );
//}

//void ColumnDemo (){
//  return MaterialApp(
//    title: 'Flutter Demo',
//    debugShowCheckedModeBanner: false,
//    theme: ThemeData(
//      primarySwatch: Colors.orange,
//    ),
//    home: new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Test'),
//      ),
//      body: Column(
//        /*
//          *
//          CrossAxisAlignment.star：居左对齐。
//          CrossAxisAlignment.end：居右对齐。
//          CrossAxisAlignment.center：居中对齐。
//
//          主轴和副轴的辨识:
//在设置对齐方式的时候你会发现右mainAxisAlignment属性，意思就是主轴对齐方式，那什么是主轴，什么又是幅轴那。
//main轴：如果你用column组件，那垂直就是主轴，如果你用Row组件，那水平就是主轴。
//cross轴：cross轴我们称为幅轴，是和主轴垂直的方向。比如Row组件，那垂直就是幅轴，Column组件的幅轴就是水平方向的。
//          * */
//        mainAxisAlignment: MainAxisAlignment.center,
////          crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Center(child: Text('aslkjflajf')) ,
//          Center(child: Text('是开放空间积分空数据发卡机 按实际福建省的叫法今飞凯达科技')),
//          Center(child: Text('sjflj雷克萨解放军垃圾卡萨丁见附件啊ufuouqwhwoudfNlkjf'))
//        ],
//
//      ),
//
//
//    ),
//  );
//}