import 'package:action2/sc.dart';
import 'package:flutter/material.dart';



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Inapp Plugin by dooboolab'),
          ),
          body: PageScreen()),
    );
  }
}
