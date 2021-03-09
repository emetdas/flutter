import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("new app"),),
      body: Center(
        child: Text(
        "center",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
        textScaleFactor: 2.0,
      ),
      ),
    );
  }
}
