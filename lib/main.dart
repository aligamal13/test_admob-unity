import 'package:action2/provider/bottom_prov.dart';
import 'package:action2/sc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomProvedrdeutsch()),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Inapp Plugin by dooboolab'),
            ),
            body: BootomNAvgitonScreenDeutsch()),
      ),
    );
  }
}
