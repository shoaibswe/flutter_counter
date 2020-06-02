import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Stateful Flutter Counter", home: StfulAppHome()));
}

class StfulAppHome extends StatefulWidget {
  _StfulApp createState() => _StfulApp();
}

class _StfulApp extends State<StfulAppHome> {
  int _x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shoaib\'s Flutter Counter"),
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 200),
                child: Column(
                  children: <Widget>[
                    Text("Count: $_x", textAlign: TextAlign.center,style: TextStyle(backgroundColor: Colors.amberAccent,fontSize: 24),),
                    RaisedButton(
                      color: Colors.greenAccent,
                      child: Text("Add 1"),
                      onPressed: () {
                        setState(() {
                          _x+=1;
                        });
                      },
                    ),
                    RaisedButton(
                        color: Colors.deepOrange,
                        child: Text("Reset"),
                        onPressed: () {
                          setState(() {
                            _x = 0;
                          });
                        })
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
