import 'package:flutter/material.dart';
import './products.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> products = ['Foo tester'];

  addMeele(){
    setState(() {
      products.add('New meele');
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Easy list'),
            ),
            body: Column(
              children: <Widget>[
                Container(
                  child: RaisedButton(
                    onPressed: () => addMeele(),
                    child: Text('Button'),
                  ),
                  margin: EdgeInsets.all(20),
                ),
               Products(products)
              ]
            )));
  }
}
