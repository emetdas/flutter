import 'package:flutter/material.dart';
import 'package:flutter_1/widget/drawer.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Web Hub"),
      centerTitle: true,
      elevation: 0,
      ),
      body: Center(
        child: Text(
        "Home Page",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        textScaleFactor: 2.0,
      ),
      ),
      drawer: MyDrawer(),
    );
  }
}
