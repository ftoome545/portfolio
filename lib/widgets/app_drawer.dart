import 'package:flutter/material.dart';
import 'package:practice_1/screens/profile_screen.dart';
import 'package:practice_1/screens/project_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  Widget buildListTile(Icon icon, String title, VoidCallback tap) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        leading: icon,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        onTap: tap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Container(
          //   color: const Color.fromARGB(255, 3, 55, 98),
          //   height: 120,
          //   width: double.infinity,
          //   alignment: Alignment.topLeft,
          //   padding: const EdgeInsets.only(top: 60.0),
          //   child: ListTile(
          //     leading: const Icon(
          //       Icons.close_rounded,
          //       size: 50.0,
          //       color: Colors.white,
          //     ),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          // ),
          const DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 80,
              color: Color.fromARGB(255, 3, 55, 98),
            ),
            // Image.asset(
            //   'images/card_logo.png',
            //   // fit: BoxFit.fill,
            // ),
          ),
          buildListTile(
              const Icon(
                Icons.person,
                size: 50.0,
                color: Color.fromARGB(255, 62, 161, 242),
              ),
              'Profile', () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()));
          }),
          buildListTile(
            const Icon(
              Icons.work,
              size: 50.0,
              color: Color.fromARGB(255, 62, 161, 242),
            ),
            'Projects',
            () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProjectScreen()));
            },
          ),
          // const Divider(
          //   height: 5.0,
          //   thickness: 2.0,
          //   color: Colors.grey,
          // ),
        ],
      ),
    );
  }
}
