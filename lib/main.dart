

import 'package:divisible_by_app/screens/divisible.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DIVISIBLE BY 8"),
          backgroundColor: Colors.amber,
        ),
        body: CheckApp(),
      ),
    );
  }
}



