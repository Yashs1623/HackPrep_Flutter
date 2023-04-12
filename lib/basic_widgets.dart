// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BasicWidgets extends StatefulWidget {
  const BasicWidgets({Key? key}) : super(key: key);

  @override
  State<BasicWidgets> createState() => _BasicWidgetsState();
}

class _BasicWidgetsState extends State<BasicWidgets> {
  bool _lightIsOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widgets'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                'These are some of the basic widgets',
                textAlign: TextAlign.center,
                style: TextStyle(
                  backgroundColor: Colors.transparent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  // letterSpacing: 10,
                  // wordSpacing: 10,
                ),
              ),
              SizedBox(height: 20),
              Icon(Icons.flutter_dash_rounded,
                  size: 80, color: Colors.deepPurple),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('This is a button'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    onPrimary: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 5,
                    side: BorderSide(color: Colors.yellowAccent, width: 5),
                    textStyle:
                        TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.lightbulb_outline,
                  color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
                  size: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _lightIsOn = !_lightIsOn;
                    });
                  },
                  child: Container(
                    color: Colors.yellow.shade600,
                    child: Text(
                      _lightIsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Image.network(
                'https://picsum.photos/250?image=1',
                // height: 10,
                // width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
