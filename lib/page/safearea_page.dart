import 'package:flutter/material.dart';

class SafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).viewPadding;
    print('Applied padding: $padding');

    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: SafeArea(
        //top: false,
        child: ListView(
          children: List.generate(
            100,
            (index) => ListTile(title: Text('Item $index')),
          ),
        ),
      ),
    );
  }
}
