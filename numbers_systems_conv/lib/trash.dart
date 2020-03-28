/*import 'main1.dart';
import 'from_10.dart';
import 'to_10.dart';
import 'alphabet.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field Focus',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds data related to the form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Define the focus node. To manage the lifecycle, create the FocusNode in
  // the initState method, and clean it up in the dispose method.

  int a = 0;
  String finish_variable = 'Thre will be output';
  int error;
  
  
  String output = "";
  List num_2 = []; //Список для переворота полученного числа (List for reverse of number)
  var num_10;
  var old;
  int num_sys_start;
  int num_sys_end;

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
            widget
            // The first text field is focused on as soon as the app starts.
            TextField(
              decoration: InputDecoration(
                hintText: "Number for convertation"
              ),
              autofocus: true,
              onSubmitted: (String text1) {
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
              onSubmitted: (String text2) {
                setState(() {
                    num_sys_start = int.parse(text2);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Final Number System"
              ),
              onChanged: (String text3) {
                setState(() {
                  num_sys_end = int.parse(text3);
                });
              }
            ),
            new Text('$num_sys_end')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the button is pressed,
        // give focus to the text field using myFocusNode.
        onPressed: () {
          new Text(/*distribution(num_10, num_sys_start, num_sys_end, num_2, output, old, finish_variable).toString()*/'OK');
          },
        tooltip: 'Do',
        child: Icon(Icons.check),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/