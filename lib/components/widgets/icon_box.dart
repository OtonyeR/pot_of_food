import 'package:flutter/material.dart';

//Custom Icon Button
class IconBox extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final onTap;
  const IconBox({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 38,
        width: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: backgroundColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: IconButton(
            icon: Icon(
              icon,
              color: iconColor,
              size: 22,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class IconBoxSmall extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  // final void Function()? onTap;
  const IconBoxSmall({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    required this.icon,
    // required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {},
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: backgroundColor.withOpacity(0.75),
        ),
        child: Align(
          alignment: Alignment.center,
          child: IconButton(
            icon: Icon(
              icon,
              color: iconColor,
              size: 19,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
