import 'package:flutter/material.dart';
import 'package:task3/pageOne.dart';
import 'package:task3/pageTwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ("App3"),
      routes: <String, WidgetBuilder>{
    '/First' : (BuildContext context)=> pageOne(),
    '/second' : (BuildContext context)=> pageTwo(),
    },
      home: pageOne(),
    );
  }
}
