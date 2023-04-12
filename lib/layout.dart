// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class LayoutWidgets extends StatefulWidget {
  const LayoutWidgets({Key? key}) : super(key: key);

  @override
  State<LayoutWidgets> createState() => _LayoutWidgetsState();
}

class _LayoutWidgetsState extends State<LayoutWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout widgets'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Container'),
            leading: Icon(MaterialCommunityIcons.rectangle_outline),
            onTap: () {
              Navigator.of(context).pushNamed('/layout/container');
            },
          ),
          ListTile(
            title: Text('GridView'),
            leading: Icon(Entypo.grid),
            onTap: () {
              Navigator.of(context).pushNamed('/layout/gridview');
            },
          ),
          ListTile(
            title: Text('ListView'),
            leading: Icon(Entypo.list),
            onTap: () {
              Navigator.of(context).pushNamed('/layout/listview');
            },
          ),
          ListTile(
            title: Text('Row'),
            leading: Icon(MaterialIcons.table_rows),
            onTap: () {
              Navigator.of(context).pushNamed('/layout/row');
            },
          ),
          ListTile(
            title: Text('Column'),
            leading: Icon(FontAwesome.columns),
            onTap: () {
              Navigator.of(context).pushNamed('/layout/column');
            },
          ),
          ListTile(
            title: Text('Stack'),
            leading: Icon(Ionicons.file_tray_stacked_sharp),
            onTap: () {
              Navigator.of(context).pushNamed('/layout/stack');
            },
          ),
        ],
      ),
    );
  }
}
