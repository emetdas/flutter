import 'package:flutter/material.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('New App'),
          elevation: 0,
          backgroundColor: Color(0xFF7E236F),
        ),
        body: Center(
          child: Container(
            child: Text('Pro app developer'),
          ),
        ),
      ),
    );
  }
}
