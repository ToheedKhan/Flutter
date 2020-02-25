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
/* Key is a way of referencing actual widget
 GlobalKey means it will be available across the entire application
 */
class _State extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();

  void _showbar() {
    _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text('Hello world')));
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
              new Text('Add Widgets Here'),
              new RaisedButton(onPressed: _showbar, child: new Text('Click me'),)
            ],
          ),
        ),
      ),
    );
  }

}