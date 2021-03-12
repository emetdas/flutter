import 'package:flutter/material.dart';
import 'package:flutter_1/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changeBtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_img.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Wellcome $name",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "UserName",
                      hintText: "Enter UserName",
                      labelStyle: TextStyle(fontSize: 16.0),
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                      labelStyle: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () async{
                      setState(() {
                        changeBtn = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRouts.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeBtn ? 50 : 150,
                      height: 40,
                      alignment: Alignment.center,
                      color: Colors.deepPurple,
                      child: changeBtn
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30),
                            ),
                      decoration: BoxDecoration(
                        // shape: changeBtn ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(changeBtn ? 50 : 8),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(
                  //     // padding:
                  //     //     EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  //     minimumSize: Size(120, 40),
                  //   ),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRouts.homeRoute);
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
