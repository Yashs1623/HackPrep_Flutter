// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print('You have selected index number ' + _selectedIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Hello there! This is the drawer widget",
                textAlign: TextAlign.justify,
                textScaleFactor: 2.0,
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            DrawerTile(title: 'First tile'),
            DrawerTile(title: 'Second tile'),
            DrawerTile(title: 'Third tile'),
            DrawerTile(title: 'Fourth tile'),
            ListTile(
              title: Text("Go to Home Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
            // ListTile(
            //   title: const Text("Second"),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Navigation Widgets'),
      ),
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
              indicatorColor: Colors.white,
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(
                Icons.directions_car,
                size: 50.0,
              ),
              Icon(
                Icons.directions_transit,
                size: 50.0,
              ),
              Icon(
                Icons.directions_bike,
                size: 50.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
    );
  }
}

class DrawerTile extends StatefulWidget {
  final String title;
  const DrawerTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<DrawerTile> createState() => _DrawerTileState();
}

class _DrawerTileState extends State<DrawerTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      onTap: () {
        Navigator.pop(context);
        Navigator.pop(context);
      },
    );
  }
}
