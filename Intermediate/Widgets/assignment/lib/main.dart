/*
Why is the timer created in initState?
Because it needs to exist in the state to operate as expected.

What is a ToolTip?
On screen display that lets the user know what a control is used for.


What is a key?
It references a widget

Why should you use a progress indicator?
It lets the user know the application is running.

Why use a PopupMenuButton?
Makes selecting an option nice and compact on limited screen space
 */

/*
Create an program that displays a progress bar driven by a timer
 */

import 'package:flutter/material.dart';
import 'dart:async';

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

  static Duration duration = new Duration(milliseconds: 100);
  Timer timer;
  double _value = 0.0;
  bool _active = false;

  @override
  void initState() {
    timer = new Timer.periodic(duration, _timeout);
  }

  void _timeout(Timer timer) {
    if(!_active) return;
    setState((){
      _value = _value + 0.01;
      if(_value == 1.0) _active = false;
    });
  }

  void _onPressed() {
    setState(() {
      _value = 0.0;
      _active = true;
    });
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
                new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new LinearProgressIndicator(value: _value, backgroundColor: Colors.white,),
                ),
                new RaisedButton(onPressed: _onPressed, child: new Text('Start'),)
              ],
            ),
          )
      ),
    );
  }

}