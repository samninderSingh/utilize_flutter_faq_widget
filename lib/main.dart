import 'package:flutter/material.dart';
import 'demo.dart';
import 'package:faq/faq.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            faqList(
              title: 'Expandable List demo',
              data: _generateData(),
            )
          ],
        ),
      ),
    );
  }

  List<List<String>> _generateData() {
    int numberOfGroups = 5;
    List<List<String>> results = List<List<String>>();
    for (int i = 0; i < numberOfGroups; i++) {
      // List<String> items = List<String>();
      // for (int j = 0; j < 1; j++) {
      //   items.add("Item $j in group $i");
      // }
      results.add([
        "Everything’s a widget in Flutter… so wouldn’t it be nice to know how to make your own? There are several methods to create custom widgets, but the most basic is to combine simple existing widgets into the more complex widget that you want. This is called composition."
      ]);
    }
    return results;
  }
}
