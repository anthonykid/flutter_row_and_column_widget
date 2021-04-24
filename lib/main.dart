import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row and Column"),
        ),
        body: Column( //if Column them the text is arrange vertical & if it's Row then its gonna be arrange horizontal
        mainAxisAlignment: MainAxisAlignment.center, //if center then its gonna be in the center following the body,
        crossAxisAlignment: CrossAxisAlignment.start, //its gonna arrange the second children to the end of the first children
          children: <Widget>[
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Row( //if we add row like this, its gonna push Column above this to the center of the screen. if crossAxisAlignment is off
              children: <Widget>[
                Text("Text 4"),
                Text("Text 5"),
                Text("Text 6"),
              ],
              )
          ],
        ),
      ),
    );
  }
}
