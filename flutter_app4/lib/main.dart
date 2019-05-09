import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(
        items: new List<String>.generate(1000, (i) => "Item $i")
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final List<String> items;

  MyApp({Key key, @required this.items}) :super(key: key);

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

        body: MyImageGridView(),
//        body: MyGridView(),
//        body: MyListView(items: items)

//        body: Center(
//          child: TestListView(),
//        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {

  MyListView({Key key, @required this.items}) :super(key: key);
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text('${items[index]}'),
          );
        }
    );
  }
}

class MyImageGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      padding: EdgeInsets.all(20.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      children: <Widget>[
        new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg', fit: BoxFit.contain,),
        new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg', fit: BoxFit.contain,),
        new Image.asset('images/car.jpg'),
        new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg', fit: BoxFit.contain,),
        new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg', fit: BoxFit.contain,),
        new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg', fit: BoxFit.contain,),
        new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg', fit: BoxFit.contain,),
        new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg', fit: BoxFit.contain,),
        new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg', fit: BoxFit.contain,),
        new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=795067152,4208413968&fm=15&gp=0.jpg', fit: BoxFit.contain,),
      ],
    );
  }

}

class MyGridView extends StatelessWidget {

/*  padding:表示内边距，这个小伙伴们应该很熟悉。
  crossAxisSpacing:网格间的空当，相当于每个网格之间的间距。
  crossAxisCount:网格的列数，相当于一行放置的网格数量。
  */
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: const EdgeInsets.all(10.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 3,
      children: <Widget>[
        const Text('fjalsjflkajj'),
        const Text('I love Web'),
        const Text('fjasljflajfks'),
        const Text('我喜欢玩游戏'),
        const Text('我喜欢看书'),
        const Text('我喜欢吃火锅')
      ],

    );
  }

}

void starApp(String title, List<String> items) {

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


