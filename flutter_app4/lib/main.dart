import 'package:flutter/material.dart';

void main() => runApp(MyApp(
    items: new List<String>.generate(1000, (i)=> "Item $i")
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final List<String> items;
  MyApp({Key key, @required this.items}):super(key:key);

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
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(

        body: MyListView(items: items)

//        body: Center(
//          child: TestListView(),
//        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {

  MyListView({Key key, @required this.items}):super(key:key);
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: items.length,
        itemBuilder: (context, index){
        return new ListTile(
          title:new Text('${items[index]}'),
        );
        }
    );
  }

}

class TestListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 200.0,
          color: Colors.green[300],
        ),
        new Container(
          width: 200.0,
          color: Colors.orange,
        ),
        new Container(
          width: 200.0,
          color: Colors.red[400],
        ),
      ],
    );
  }
}
