import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final imageUrl = "https://www.shutterstock.com/image-illustration/color-portrait-cute-cartoon-girl-profile-1793950984";
  final imageUrl =
     "https://avatars.githubusercontent.com/u/12619420?s=460&u=26db98cbde1dd34c7c67b85c240505a436b2c36d&v=4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(),
                accountName:  Text("Prarthana"),
                accountEmail: Text("prarthanab@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                  ),
              )),
              ListTile(
                leading: const Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),

               ListTile(
                leading: const Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),

              ListTile(
                leading: const Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  "Email me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              )
          ],
        ),
      ) ,
    );
  }
}
