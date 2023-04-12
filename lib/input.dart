// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({Key? key}) : super(key: key);

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String inputStr = '';
  TextEditingController ctrl = TextEditingController();
  bool enabled = false;
  bool expanded = false;
  bool? checkbox = false;
  String radiovalue = '';

  @override
  Widget build(BuildContext context) {
    void setRadioValue(value) {
      setState(() {
        radiovalue = value;
        print(radiovalue);
      });
    }

    return Scaffold(
      appBar: AppBar(title: Text('Input Widgets')),
      body: Center(
        child: SingleChildScrollView(
          child: ListView(
            shrinkWrap: true,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'This is the textfield',
                  prefixIcon: Icon(Icons.flutter_dash),
                  suffixIcon: Icon(Icons.check),
                  hintText: 'Say something',
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.greenAccent, width: 5.0)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                  ),
                ),
                controller: ctrl,
                onChanged: (String inputTxt) {
                  setState(() {
                    inputStr = inputTxt;
                  });
                },
              ),
              Text(inputStr),
              Text('Above text has length = ' + ctrl.text.length.toString()),
              Switch(
                  value: enabled,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.greenAccent,
                  inactiveTrackColor: Colors.indigoAccent,
                  onChanged: (bool val) {
                    setState(() {
                      enabled = val;
                      print(enabled);
                    });
                  }),
              ExpansionPanelList(
                expansionCallback: (i, bool val) {
                  setState(() {
                    expanded = !val;
                  });
                },
                children: [
                  ExpansionPanel(
                      headerBuilder: (context, value) {
                        return Center(child: Text('Tap here'));
                      },
                      isExpanded: expanded,
                      body: Text('First expanded')),
                ],
              ),
              Checkbox(
                value: checkbox,
                activeColor: Colors.deepPurpleAccent,
                onChanged: (bool? value) {
                  setState(() {
                    checkbox = value;
                    print(checkbox);
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                      activeColor: Colors.red,
                      value: 'First',
                      groupValue: radiovalue,
                      onChanged: (val) {
                        setRadioValue(val);
                      }),
                  Radio(
                      activeColor: Colors.blue,
                      value: 'Second',
                      groupValue: radiovalue,
                      onChanged: (val) {
                        setRadioValue(val);
                      }),
                  Radio(
                      activeColor: Colors.amber,
                      value: 'Third',
                      groupValue: radiovalue,
                      onChanged: (val) {
                        setRadioValue(val);
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
