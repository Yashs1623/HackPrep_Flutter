// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LayoutColumn extends StatefulWidget {
  const LayoutColumn({Key? key}) : super(key: key);

  @override
  State<LayoutColumn> createState() => _LayoutColumnState();
}

class _LayoutColumnState extends State<LayoutColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(color: Colors.red, height: 200, width: 200),
            Container(color: Colors.yellow, height: 200, width: 200),
            Container(color: Colors.green, height: 200, width: 200)
          ],
        ),
      ),
    );
  }
}
