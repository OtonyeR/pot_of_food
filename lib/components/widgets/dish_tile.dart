import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/styles.dart';

//Dish display widget
class DishTile extends StatelessWidget {
  final void Function()? onTap;

  const DishTile({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 28),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: const [
              BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 0.6)
            ]),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16)),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/image1.jfif',
                      ),
                      fit: BoxFit.cover)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Title of food',
                      style: mainTextStyle2,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Name of Chef',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: grey,
                              fontSize: 14.5),
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: const [
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Color.fromRGBO(255, 154, 0, 1),
                            ),
                            SizedBox(width: 1.5),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 14),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'N1000 - N8000',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Wrap(
                          // alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: const [
                            Icon(
                              CupertinoIcons.heart,
                              size: 14,
                              color: mainBlack,
                            ),
                            SizedBox(width: 1.5),
                            Text(
                              '19',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
