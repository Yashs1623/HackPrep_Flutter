// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LayoutContainer extends StatefulWidget {
  const LayoutContainer({Key? key}) : super(key: key);

  @override
  State<LayoutContainer> createState() => _LayoutContainerState();
}

class _LayoutContainerState extends State<LayoutContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.teal,
              border: Border.all(color: Colors.red, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20)]),
          alignment: Alignment.center,
          height: 400,
          width: 250,
          child: Text('This is Container'),
        ),
      ),
    );
  }
}
