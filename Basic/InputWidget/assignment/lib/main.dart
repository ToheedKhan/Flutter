
/*
User Input allows the user to?
Enter data into the application.

Why do we have to use async programming to display a Date picker?
The application is waiting on the user to make a choice

Difference between a combobox and switch is Visual style
 */

/* Add a Text widget, a Textfield widget, and a RaisedButton widget -
 allow the user to enter text and when they click the button, the Text will display what they wrote in the TextField
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
  String _display = '';
  
  void _onChanged(String value) {
    setState(() {
      _value = value;
    });
  }
  
  void _onClicked() {
    setState(() {
      _display = _value;
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
              new Text(_display),
              new TextField(onChanged: _onChanged,),
              new RaisedButton(onPressed: _onClicked, child: new Text('Click me'))
            ],
          ),
        ),
      ),
    );
  }

}