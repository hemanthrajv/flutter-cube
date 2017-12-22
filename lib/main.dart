import 'package:flutter/material.dart';

import 'cube.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Cube',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text("Cube"),
        ),
        body: new Center(
          child: new Cube(),
        ),
      ),
    );
  }
}