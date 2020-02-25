/*
Why notify the user?
To let the user know something happened in the applicaion.

What is the snack bar?
An on screen display that notifies the user of an event.


What is the bottom sheet?
A drawer that appears from the bottom.

What is a dialog?
A panel that appears over the existing window.

When should you use the Simple Dialog?
When you want to present the user with options and let them choose one.
 */

/*
Allow the user to enter their name, and when a button is clicked, display a snackbar displaying their name.
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
  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();

  void _showBar(String message) {
    _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text(message)));
  }

  void _onChanged(String value) {
    setState((){
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      key: _scaffoldstate,
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Enter your name'),
              new TextField(onChanged: _onChanged,),
              new RaisedButton(onPressed: () => _showBar('Hello ${_value}'), child: new Text('Click me'),)
            ],
          ),
        ),
      ),
    );
  }

}