import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("new app"),
      centerTitle: true,
      elevation: 0,
      ),
      body: Center(
        child: Text(
        "center",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        textScaleFactor: 2.0,
      ),
      ),
      drawer: Drawer(),
    );
  }
}
