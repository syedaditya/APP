import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/mypic.jpeg"),
                ),
                accountName: Text("Syed Aditya"),
                accountEmail: Text("adictg959@gmail.com"),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "HOME",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "PROFILE",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.cart_badge_plus,
                color: Colors.white,
              ),
              title: Text(
                "CART",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.eye,
                color: Colors.white,
              ),
              title: Text(
                "POWER",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.location,
                color: Colors.white,
              ),
              title: Text(
                "TRACK",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
