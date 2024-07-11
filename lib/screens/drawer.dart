import 'package:flutter/material.dart';
import 'package:pot_of_food/components/styles/colors.dart';

import 'package:flutter_svg/flutter_svg.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 180),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // padding: ,
                  child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/image1.jfif')),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Marvis Ighedosa',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('dosamarvis@gmail.com',
                        style: TextStyle(color: Colors.grey)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 40),
            const MenuItem(
              icon: Icon(Icons.notifications_outlined),
              text: 'Notification',
            ),
            const SizedBox(height: 20),
            MenuItem(
              icon: SvgPicture.asset(
                'assets/cook.svg',
                height: 32,
                width: 32,
              ),
              text: 'Profile',
            ),
            const MenuItem(
              icon: Icon(
                Icons.person_outline,
                size: 28,
              ),
              text: 'Profile',
            ),
            const MenuItem(
              icon: Icon(Icons.settings_outlined),
              text: 'Settings',
            ),
            const MenuItem(
              icon: Icon(Icons.feedback_outlined),
              text: 'Send A Feedback',
            ),
            const Spacer(),
            Row(
              children: const [
                Icon(Icons.logout, color: Colors.red),
                const SizedBox(width: 10),
                Text(
                  'Log Out',
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
                SizedBox(height: 80),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final Widget icon;
  final String text;

  const MenuItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
