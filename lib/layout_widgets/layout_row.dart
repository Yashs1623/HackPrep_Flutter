// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LayoutRow extends StatefulWidget {
  const LayoutRow({ Key? key }) : super(key: key);

  @override
  State<LayoutRow> createState() => _LayoutRowState();
}

class _LayoutRowState extends State<LayoutRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(color: Colors.red, height: 200, width: 100),
            Container(color: Colors.yellow, height: 200, width: 100),
            Container(color: Colors.green, height: 200, width: 100)
          ],
        ),
      ),
    );
  }
}