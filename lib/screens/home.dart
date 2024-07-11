import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'drawer.dart'; // Update the path as necessary

// UI widgets imports
import '../components/styles/colors.dart';
import '../components/styles/styles.dart';
import '../components/widgets/category_tab.dart';
import '../components/widgets/food_tile.dart';
import '../components/widgets/greet_tab.dart';
import '../components/widgets/search_bar.dart';
import '../components/widgets/section_spacer.dart';
import 'category_view.dart'; // Make sure the CategoryScreen is correctly imported

class HomeScreen extends StatelessWidget {
  final ZoomDrawerController _drawerController = ZoomDrawerController();

  HomeScreen({Key? key}) : super(key: key);

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
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 22.0, vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GreetTab(
                  iconTap1: _drawerController.toggle?.call(),
                ),
                const SizedBox(height: 12),
                const SearchBar(),
                const SectionSpacer(),
                const Text(
                  'Something Good For Lunch',
                  textAlign: TextAlign.start,
                  style: subHeadStyle,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const FoodTile();
                      }),
                ),
                const SectionSpacer(),
                const Text(
                  'Categories',
                  textAlign: TextAlign.start,
                  style: subHeadStyle,
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: ListView.builder(
                      itemCount: 6,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CategoryTab(onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryScreen()),
                          );
                        });
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
