import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ListViewDemo(title: 'Flutter ListView Demo'),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  ListViewDemo({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  var listTitleArray = ['博爱', '咸鱼', '晓峰'];

  listView() {
    Iterable<Widget> listTitles = listTitleArray.map((String item) {
      return new ListTile(
        isThreeLine: true,
        dense: false,
        leading: new CircleAvatar(
          child: Text(item),
          backgroundImage: new NetworkImage('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg'),
        ),
        title: Text('title'),
        subtitle: Text('subtitle'),
        trailing: new Icon(
          Icons.arrow_right,
          color: Colors.green,
        ),
      );
    });
    return listTitles.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),

      body: new ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index){
            return Text('子项：' + index.toString());;
          },
      ),

//      body: new ListView(
//        children: this.listView(),
//      ),
    );
  }
}

//void ListViewHorizontalDemo (){
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold (
//      appBar: AppBar(
//        title: Text('Test'),
//      ),
//      body:Center(
//        child:Container(
//            height:200.0,
//            child:new ListView(
//              scrollDirection: Axis.horizontal,
//              children: <Widget>[
//                new Container(
//                  width:180.0,
//                  color: Colors.lightBlue,
//                ), new Container(
//                  width:180.0,
//                  color: Colors.amber,
//                ), new Container(
//                  width:180.0,
//                  color: Colors.deepOrange,
//                ),new Container(
//                  width:180.0,
//                  color: Colors.deepPurpleAccent,
//                ),
//              ],
//            )
//
//        ),
//      ),
//    );
//  }
//}
