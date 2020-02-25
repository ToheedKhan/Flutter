import 'package:flutter/material.dart';
/*
Make a Listview that displays a list of pets
 */

/*
What is a listview?
A widget that automatically lays out its children based on the content.

What are rows and columns?
Layout widgets that change the direction of the content.

Why is the Expanded widget important?
It automatically resizes controls.

What does the Card widget do?
Displays a widget with a frame around it.

What does the listview.builder do?
Automatically builds its child widgets with a template and a list.
 */

void main() {
  runApp(new MaterialApp(
  home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
   @override
  _State createState() => new _State();

}

class _State extends State<MyApp> {
  List _pets = ['Dogs', 'Cats', 'Fish', 'Birds', 'Lizards'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Available Pets'),
              new Expanded(child: new ListView.builder(
                  itemCount: _pets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new Text(_pets.elementAt(index));
                  }
              )),
            ],
          ),
        ),
      ),
    );
  }

}