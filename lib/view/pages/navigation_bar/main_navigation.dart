import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mind_task/view/pages/navigation_bar/home.dart';
import 'package:mind_task/viewmodel/navigation_bar_viewmodel/navigation_bar_viewmodel.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

  @override
  State<MainNavigationBar> createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar>
    with TickerProviderStateMixin {
  late final MotionTabBarController _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
  }

  @override
  void didChangeDependencies() {
    context.read<NavigationBarViewmodel>().getHomeData();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _motionTabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TabBarView(
          controller: _motionTabBarController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            Home(),
            Center(child: Text('Favorite')),
            Center(child: Text('Cart')),
            Center(child: Text('Products')),
            Center(child: Text('Profile')),
          ],
        ),
      ),
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController,
        initialSelectedTab: "Home",
        labels: const ["Home", "Favorite", "Cart", "Products", "Profile"],
        icons: const [
          Icons.home,
          Icons.favorite,
          Icons.shopping_cart,
          Icons.list_rounded,
          Icons.person,
        ],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.blue[600],
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.blue[900],
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            _motionTabBarController.index = value;
          });
        },
      ),
    );
  }
}
