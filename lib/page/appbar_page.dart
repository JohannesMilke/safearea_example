import 'package:flutter/material.dart';
import 'package:safearea_example/main.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: ListView(
          children: List.generate(
            100,
            (index) => ListTile(title: Text('Item $index')),
          ),
        ),
      );
}
