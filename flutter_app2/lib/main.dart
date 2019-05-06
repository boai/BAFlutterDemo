import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    /*
    * 代码中使用了一个垂直布局组件Column组件，然后利用了ListTile实现内部列表，这里需要说明的是ListTile不光可以使用在ListView组件中，然后容器组件其实都可以使用。
    * */
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: new Text(
              '广州市白云区1',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text('IOS101'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.orange,
            ),
          ),
          new Divider(),
          ListTile(
            title: new Text(
              '广州市白云区2',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text('IOS102'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.orange,
            ),
          ),
          new Divider(),
          ListTile(
            title: new Text(
              '广州市白云区3',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text('IOS103'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.orange,
            ),
          ),
          new Divider(),
        ],
      ),
    );

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
        body: Center(child: card),
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

//void aa CenterExpandedDemo(){
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
//
//Expanded属性的使用
//其实在学习水平布局的时候我们对Expanded有了深刻的理解，它就是灵活布局。比如我们想让中间区域变大，而头部区域和底部根据文字所占空间进行显示。
//          * */
//        mainAxisAlignment: MainAxisAlignment.center,
////          crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Center(child: Text('在Flutter里的布局个人觉得是很灵活的，但这就和我们写Html+CSS是一样的，我们需要些练习去熟悉它。\n动手练习一下吧，理论上我们学会了水平和垂直布局，已经可以布出我们想要的任何界面了。\n\n')) ,
//          Expanded(child: Center(child: Text('是开放空间积分空数据发卡机 按实际福建省的叫法今飞凯达科技\n\n'))),
//Expanded(child: Center(child: new Image.asset(
//'images/car.jpg',
//fit: BoxFit.cover,
//)),),
//          Center(child: Text('sjflj雷克萨解放军垃圾卡萨丁见附件啊ufuouqwhwoudfNlkjf'))
//        ],
//
//      ),
//
//
//    ),
//  );
//}

//void StackDemo (){
//  var stack = new Stack(
//    alignment: const FractionalOffset(0.5, 0.8),
//    children: <Widget>[
//      new CircleAvatar(
////    http://img3.imgtn.bdimg.com/it/u=4166134930,1257671391&fm=11&gp=0.jpg
////    http://jspang.com/static//myimg/blogtouxiang.jpg
////    https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg
//        backgroundImage: new NetworkImage('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg'),
//        radius: 100.0,
//      ),
//      new Container(
//        decoration: new BoxDecoration(
//          color: Colors.lightBlue,
//        ),
//        padding: EdgeInsets.all(5.0),
//        child: new Text('美女'),
//      ),
//    ],
//
//  );
//
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
//      body: Center(child: stack),
//
//    ),
//  );
//}

//void StackPositionedDemo (){
//  @override
//  Widget build(BuildContext context) {
//    /*
//    *
//    Positioned组件的属性:
//bottom: 距离层叠组件下边的距离
//left：距离层叠组件左边的距离
//top：距离层叠组件上边的距离
//right：距离层叠组件右边的距离
//width: 层叠定位组件的宽度
//height: 层叠定位组件的高度
//
//    * */
//    var stack = new Stack(
//      alignment: const FractionalOffset(0.5, 0.8),
//      children: <Widget>[
//        new CircleAvatar(
////    http://img3.imgtn.bdimg.com/it/u=4166134930,1257671391&fm=11&gp=0.jpg
////    http://jspang.com/static//myimg/blogtouxiang.jpg
////    https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg
//          backgroundImage: new NetworkImage(
//              'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg'),
//          radius: 100.0,
//        ),
//        new Positioned(
//          top: 10.0,
//          left: 10.0,
//          child: new Text('boai.com'),
//        ),
//        new Positioned(
//          bottom: 10.0,
//          right: 10.0,
//          child: new Text('妹子一个'),
//        )
//      ],
//    );
//
//    return MaterialApp(
//      title: 'Flutter Demo',
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        primarySwatch: Colors.orange,
//      ),
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Test'),
//        ),
//        body: Center(child: stack),
//      ),
//    );
//  }
//}
