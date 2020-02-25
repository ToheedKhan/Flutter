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

  List<BottomNavigationBarItem> _items;
  String _value = '';
  int _index = 0;

  @override
  void initState() {
    _items = new List();
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.people), title: new Text('People')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.weekend), title: new Text('Weekend')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.message), title: new Text('Message')));
  }

  String getSelectedItemTitle() {
    String selectedItemTitle = _items.elementAt(_index).title.toString().substring(6);
    return selectedItemTitle.substring(0, selectedItemTitle.length -2);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(getSelectedItemTitle()),
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
      bottomNavigationBar: new BottomNavigationBar(
          items: _items,
      fixedColor: Colors.blue,
      currentIndex: _index,
      onTap: (int item) {
            setState(() {
              _index = item;
              _value = "Current value is: ${_index.toString()}";
            });
      },
      ),
    );
  }

}