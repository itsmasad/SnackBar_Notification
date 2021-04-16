import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  final GlobalKey<ScaffoldState> _skey = new GlobalKey<ScaffoldState>();

  void method1(){
    _skey.currentState.showSnackBar(new SnackBar(content: new Text('Activated Button')));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: _skey,
      body: Center(
          child: new ElevatedButton(
              onPressed: () {
                method1();
              },
              child: Text('Activated Button')
              )
              ),
    );
  }
}
