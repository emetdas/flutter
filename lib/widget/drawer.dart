import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl = "https://portfolio-08.netlify.app/images/user.png";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Emet Das"),
                accountEmail: Text("emetdas552@gmail.com"),
                currentAccountPicture:
                    CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
              )),
        ],
      ),
      ),
    );
  }
}
