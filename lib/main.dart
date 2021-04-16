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

 void alertdialog(){
showDialog(context: context,

builder: (BuildContext){
  return AlertDialog(
    title: Text('Alert Box'),
    content: Text('This is the content of Alert Box'),
    actions: <Widget> [
TextButton(onPressed: (){
  Navigator.pop(context);
},
child: Text('Aprove')
)
    ],
  );
}
);

 }

  Widget build(BuildContext context) {
    return Scaffold(
      key: _skey,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new ElevatedButton(
                  onPressed: () {
                    method1();
                  },
                  child: Text('Activated Button')
                  ),
                  ElevatedButton(onPressed: (){alertdialog();},
                  child: Text('Click me for alert')
                  )
            ],
            
          )

              ),
    );
  }
}
