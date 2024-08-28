import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_portfolio_app/signup/singup.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  [
          UserAccountsDrawerHeader(
              accountName: const Text("Asif Raza"),
              accountEmail: const Text("asifraza01156@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(child:Image.asset("assets/images/asif.jpg"),
                ),
              ),
            decoration: const BoxDecoration(
              color: Colors.blue
            ),
          ),
          const ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Upload shot'),
          ),
          const ListTile(
            leading: Icon(Icons.share),
            title: Text('share shot'),
          ),
          const ListTile(
            leading: Icon(Icons.notification_add),
            title: Text('Message'),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('profile'),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
          ),
           TextButton(
             onPressed: (){
               Get.to(const LoginScreen());
             },
             child: const ListTile(
              leading:Icon(Icons.logout),
              title:
                   Text('Logout')),
           ),

        ],
      ),
    );
  }
}
