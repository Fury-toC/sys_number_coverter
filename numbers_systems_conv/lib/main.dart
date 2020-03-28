import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'main1.dart';

main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MaterialApp(
    home: Conv()
    ));
}

class Conv extends StatefulWidget {
  @override
  _ConvState createState() => _ConvState();
}

class _ConvState extends State<Conv> {
  int a = 0;
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convertor nymbers systems'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          children: [
            // The first text field is focused on as soon as the app starts.
            TextField(
              decoration: InputDecoration(
                hintText: "Number for convertation"
              ),
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
              decoration: InputDecoration(
                hintText: "Start Number System"
              ),
              onChanged: (String text2) {
                setState(() {
                  try {
                    num_sys_start = int.parse(text2);
                    if (a != 2) {
                      finish_variable = "There will be output";
                    }
                  }
                  on FormatException {
                    finish_variable = 'error';
                    a = 1;
                  }
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Final Number System"
              ),
              onChanged: (String text3) {
                setState(() {
                  try {
                    num_sys_end = int.parse(text3);
                    if (a != 1) {
                      finish_variable = "There will be output";
                    }
                  }
                  on FormatException {
                    finish_variable = 'error';
                    a = 2;
                  }
              });
              }
            ),
            Padding(
              padding: const EdgeInsets.all(39.0),
              child: Text('$finish_variable',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.teal
              ),),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the button is pressed,
        // give focus to the text field using myFocusNode.
        onPressed: () {
          setState(() {
            finish_variable = distribution(num_10, num_sys_start, num_sys_end, num_2, output).toString();
          });
        },
        tooltip: 'Perform',
        child: Icon(Icons.check)
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}