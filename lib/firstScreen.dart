import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_study/secondPage.dart';

import 'mode/CounterModel.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<CounterModel>(context);
    final textSize = Provider.of<int>(context).toDouble();

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Text(
          "${_counter.value}",
          style: TextStyle(fontSize: textSize),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SecondPage())),
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
