import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        accentColor: Colors.redAccent,
        primaryColor: Colors.redAccent,
      ),
      home: DiceeMain(),
    ));

class DiceeMain extends StatefulWidget {
  @override
  _DiceeMainState createState() => _DiceeMainState();
}

class _DiceeMainState extends State<DiceeMain> {
  int lDicee = 1;
  int rDicee = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicee'),
        ),
        body: Container(
          color: Colors.redAccent[700],
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                        lDicee = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset('Images/dice$lDicee.png')),
                      
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                        rDicee = Random().nextInt(6) + 1;  
                        });
                        
                      },
                      child: Image.asset('Images/dice$rDicee.png')),
                ),
              ],
            ),
          ),
        ));
  }
}
