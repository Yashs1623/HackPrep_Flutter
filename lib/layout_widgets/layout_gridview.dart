// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LayoutGridview extends StatefulWidget {
  const LayoutGridview({Key? key}) : super(key: key);

  @override
  State<LayoutGridview> createState() => _LayoutGridviewState();
}

class _LayoutGridviewState extends State<LayoutGridview> {
  @override
  Widget build(BuildContext context) {
    List<Widget> lst = [];
    for (var i = 0; i < 20; i++) {
      lst.add(
        Image.network('https://picsum.photos/250?image=' + i.toString()),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          children: lst,
        ),
      ),
    );
  }
}
