import 'package:flutter/material.dart';
import 'package:provider_study/firstScreen.dart';
import 'package:provider_study/mode/CounterModel.dart';
import 'package:provider/provider.dart';
void main() {
  final counter = CounterModel();
  final textSize = 48;

  runApp(
    Provider<int>.value(
      value: textSize,
      child: ChangeNotifierProvider.value(
        value: counter,
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: FirstScreen(),
    );
  }
}