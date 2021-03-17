import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imgUrl = "https://pbs.twimg.com/profile_images/1326707199125544961/UD_3sXi0_400x400.jpg";
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
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage(imgUrl),
                  ),
                )),
            ListTile(
              title: Text("Home", style: TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text("About", style: TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.beenhere_outlined,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text("Profile", style: TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
