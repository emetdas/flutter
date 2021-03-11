import 'package:flutter/material.dart';
import 'package:flutter_1/page/login_page.dart';
import 'package:flutter_1/utils/routes.dart';
import 'page/home_page.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(
        // appBarTheme: AppBarTheme(color: Colors.deepPurple[400]),
        primarySwatch: Colors.deepPurple,
      ),
    initialRoute: "/Login",
    routes: {
      "/Login":(context)=> Login(),
      MyRouts.loginRoute:(context)=> Login(),
      MyRouts.homeRoute:(context)=> Homepage(),
    },
    );
  }
}
