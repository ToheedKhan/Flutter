/*
What is state?

State is the data associated with the applications current settings

setState -> Allows you to store variables in the current state


Assignment - Make a button, when pressed it should display your name in a Text widget
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
  String _value = 'Hello world';

  void _onPressed() {
    setState(() => _value = 'Toheed Jahan Khan');
  }

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
              new Text(_value),
              new RaisedButton(onPressed: _onPressed, child: new Text('Click me'),)
            ],
          ),
        ),
      ),
    );
  }

}