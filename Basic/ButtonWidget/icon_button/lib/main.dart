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

  int _value= 0;

  void _add() {
    setState((){
      _value++;
    });
  }

  void _subtract() {
    setState((){
      _value--;
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
              new Text('Value = ${_value}'),
              new IconButton(icon: new Icon(Icons.add), onPressed: _add),
              new IconButton(icon: new Icon(Icons.remove), onPressed: _subtract)
            ],
          ),
        ),
      ),
    );
  }

}