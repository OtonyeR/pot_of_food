import 'package:flutter/material.dart';

import '../styles/colors.dart';

//Category widget for Home Screen
class CategoryTab extends StatelessWidget {
  final void Function()? onTap;
  const CategoryTab({
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            height: 76,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(bottom: 18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: const DecorationImage(
                    image: AssetImage('assets/image1.jfif'),
                    fit: BoxFit.cover)),
            foregroundDecoration: BoxDecoration(
              color: mainBlack.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          const Positioned.fill(
            bottom: 16,
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Stew',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
