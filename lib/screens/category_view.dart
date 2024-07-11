import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:pot_of_food/components/widgets/category_tab.dart';
import 'package:pot_of_food/components/widgets/dish_tile.dart';
import 'package:pot_of_food/screens/cooking_flow/protein_choice.dart';

import '../components/styles/colors.dart';
import '../components/widgets/search_bar.dart';
import '../components/widgets/section_spacer.dart';
import 'drawer.dart';

class CategoryScreen extends StatelessWidget {
  final ZoomDrawerController _drawerController = ZoomDrawerController();

  CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        controller: _drawerController,
        menuScreen: const DrawerScreen(),
        style: DrawerStyle.Style1,
        borderRadius: 24.0,
        showShadow: true,
        angle: -8.0,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.fastOutSlowIn,
        mainScreen: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            title: const Text(
              'Stew', //Category name
              style: TextStyle(
                  color: mainBlack, fontWeight: FontWeight.w500, fontSize: 20),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: mainBlack,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Colors.white,
          ),
          body: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 22.0, vertical: 12.0),
              child: Column(
                children: [
                  const SearchBar(),
                  const SectionSpacer(),
                  CategoryTab(),
                  const SizedBox(height: 18),
                  Expanded(
                    child: ListView(
                      children: [
                        DishTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProteinScreen()),
                            );
                          },
                        ),
                        DishTile(),
                        DishTile(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
