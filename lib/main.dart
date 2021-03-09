import 'package:flutter/material.dart';
import 'page/home_page.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.deepPurple[400])),
      // themeMode: ThemeMode.dark,
      // themeMode: ThemeMode.light,
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // routes: {
      //   "/":(context)=> Signup(),
      //   "/signup":(context)=> Signup(),
      // },
    );
  }
}
