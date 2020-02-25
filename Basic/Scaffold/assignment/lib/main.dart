/*
What is a Drawer?
A side panel that pops out.

What is a scaffold?
A programming widget that allows helps build your application

What is a floating action button?
A button that floats over the application.

What's the difference between footer buttons and the bottom navigation bar?
Footer buttons are an easy way to add widgets to the footer.

Why put controls in the AppBar?
Allows easy access to common application commands.
 */

/*
Add a Drawer, in the Drawer add a button,
when the button is clicked it should update a Text widget on the main page with the current date and time
 */

import 'package:flutter/material.dart';

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
  String _value = '';

  void _onClick() {
    setState((){
      _value = new DateTime.now().toString();
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      drawer: new Drawer(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Hello Drawer'),
              new RaisedButton(onPressed: _onClick, child: new Text('Close me'),)
            ],
          ),
        ),
      ),

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value)
            ],
          ),
        ),
      ),
    );
  }

}