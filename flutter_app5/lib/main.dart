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
      home: TestFirstVC(),
    );
  }
  
}

class TestFirstVC extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text('导航栏测试'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('商品详情'),
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(
                builder: (context) => new TestSecondVC()));
          },
        ),
      ),
    );
  }
  
}

class TestSecondVC extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text('博爱商店'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('返回'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }

}
