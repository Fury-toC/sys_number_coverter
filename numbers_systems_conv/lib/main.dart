import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'main1.dart';
import 'package:flutter/services.dart';

main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.windows;
  runApp(MaterialApp(home: Conv()));
}

class Conv extends StatefulWidget {
  @override
  _ConvState createState() => _ConvState();
}

class _ConvState extends State<Conv> {
  int a;
  int b;
  String finish_variable = 'There will be output';
  int error;

  String output = "";
  List num_2 = []; //Список для переворота полученного числа (List for reverse of number)
  var num_10;
  int num_sys_start;
  int num_sys_end;
  String deleter;
  List jo = [];

  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  dispose(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Converter of Number Systems'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
       // backgroundColor: Colors.orangeAccent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 50.0),
          child: Column(
            children: [
              // The first text field is focused on as soon as the app starts.
              TextField(
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: "Number for convertation",
                    hintStyle: TextStyle(fontSize: 20.0)),
                style: TextStyle(fontSize: 20.0),
                autofocus: true,
                onChanged: (String text1) {
                  setState(() {
                    num_10 = text1;
                  });
                },
              ),
              // The second text field is focused on when a user taps the
              // FloatingActionButton.
              TextField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    hintText: "Start Number System",
                    hintStyle: TextStyle(fontSize: 20.0)),
                style: TextStyle(fontSize: 20.0),
                onChanged: (String text2) {
                  setState(() {
                    try {
                      num_sys_start = int.parse(text2);
                      if (num_sys_start > 1 && num_sys_start < 37) {
                        a = 0;
                      }
                      else {
                        a = 1;
                      }
                      if (b != 1 && a != 1) {
                        finish_variable = "There will be output";
                      }
                      else {
                        finish_variable = "Invalid input";
                      }
                    } on FormatException {
                      finish_variable = 'Invalid input';
                      a = 1;
                    }
                  });
                },
              ),
              TextField(
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                      hintText: "Final Number System",
                      hintStyle: TextStyle(fontSize: 20.0)),
                  style: TextStyle(fontSize: 20.0),
                  onChanged: (String text3) {
                    setState(() {
                      try {
                        num_sys_end = int.parse(text3);
                        if (num_sys_end > 1 && num_sys_end < 37) {
                          b = 0;
                        }
                        else {
                          b = 1;
                        }
                        if (a != 1 && b != 1) {
                          finish_variable = "There will be output";
                        }
                        else {
                          finish_variable = "Invalid input";
                        }
                      } on FormatException {
                        finish_variable = 'Invalid input';
                        b = 1;
                      }
                    });
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 90.0, 20.0, 15.0),
                child: Text(
                  '$finish_variable',
                  style: TextStyle(fontSize: 20.0, color: Colors.teal, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            // When the button is pressed,
            // give focus to the text field using myFocusNode.
            elevation: 8.0,
            onPressed: () {
              setState(() {
                if (a != 1 && b !=1) {
                  finish_variable = "";
                  num_2.clear();
                  finish_variable = distribution(num_10, num_sys_start, num_sys_end, num_2, output).toString();
                }
              });
            },
            tooltip: 'Go',
            backgroundColor: Colors.teal,
            child: Text('Go'))// This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
