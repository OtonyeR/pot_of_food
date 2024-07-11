import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/styles.dart';
import 'icon_box.dart';

//Dish display widget for Home Screen view
class FoodTile extends StatelessWidget {
  const FoodTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      margin: const EdgeInsets.only(right: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: 260,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image1.jfif'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              const Positioned(
                bottom: 10,
                right: 10,
                child: IconBoxSmall(
                  // onTap: () {},
                  backgroundColor: Colors.white,
                  iconColor: mainBlack,
                  icon: CupertinoIcons.heart,
                ),
              ),
            ],
          ),
          const SizedBox(
              height: 5), // Add some space between the image and the text
          const Text('Afang Soup', style: mainTextStyle2),
          const SizedBox(
              height: 5), // Add some space between the title and the price
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'N3000 - N1000',
                style: subTextStyle1,
              ),
              Spacer(),
              Icon(
                Icons.star,
                size: 18,
                color: Color.fromRGBO(255, 154, 0, 1),
              ),
              SizedBox(width: 1.5),
              Text(
                '4.5 reviews',
                style: subTextStyle1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
