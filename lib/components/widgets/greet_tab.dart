import 'package:flutter/material.dart';
import 'package:pot_of_food/components/styles/colors.dart';

import '../styles/styles.dart';
import 'icon_box.dart';

//AppBar section Home Screen
class GreetTab extends StatelessWidget {
  final VoidCallback? iconTap1;
  const GreetTab({
    super.key,
    required this.iconTap1,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //User profile picture or generic user image
        GestureDetector(
          onTap: iconTap1,
          child: Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: subRed,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello, Moses!',
              style: TextStyle(
                  color: subText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'What will you like to cook?',
              style: TextStyle(
                  color: Color.fromRGBO(16, 16, 14, 1.0),
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        // Container(
        //   height: 40,
        //   width: 40,
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(8.0),
        //       border: Border.all(
        //         width: 1.0,
        //         color: const Color.fromRGBO(242, 242, 242, 1.0),
        //       )),
        //   child: Transform.scale(
        //     scale: 0.65,
        //   ), // Use SvgPicture.asset if needed
        // ),
      ],
    );
  }
}
