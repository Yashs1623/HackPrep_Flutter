// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LayoutStack extends StatefulWidget {
  const LayoutStack({Key? key}) : super(key: key);

  @override
  State<LayoutStack> createState() => _LayoutStackState();
}

class _LayoutStackState extends State<LayoutStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
              // Max Size Widget
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
              ),
              Positioned(
                top: 30,
                right: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.orange,
                ),
              ),
              Positioned(
                bottom: 30,
                right: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.purple,
                ),
              ),
              Positioned(
                top: 170,
                right: 100,
                bottom: 170,
                left: 100,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.yellowAccent,
                ),
              ),
            ],
          ),
        ));
  }
}
