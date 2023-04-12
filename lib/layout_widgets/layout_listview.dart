// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LayoutListview extends StatefulWidget {
  const LayoutListview({Key? key}) : super(key: key);

  @override
  State<LayoutListview> createState() => _LayoutListviewState();
}

class _LayoutListviewState extends State<LayoutListview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        children: const [
          Card(
              child: ListTile(
                  title: Text("List Item 1"),
                  subtitle: Text("This is the subtitle 1"),
                  leading: CircleAvatar(backgroundColor: Colors.deepOrangeAccent))),
          Card(
              child: ListTile(
                  title: Text("List Item 2"),
                  subtitle: Text("This is the subtitle 2"),
                  leading: CircleAvatar(backgroundColor: Colors.amberAccent))),
          Card(
              child: ListTile(
                  title: Text("List Item 3"),
                  subtitle: Text("This is the subtitle 3"),
                  leading: CircleAvatar(backgroundColor: Colors.teal))),
        ],
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        reverse: false,
      ),
    );
  }
}
