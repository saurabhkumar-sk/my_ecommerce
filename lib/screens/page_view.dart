import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';
import 'package:my_ecommerce/screens/cart_screen.dart';
import 'package:my_ecommerce/screens/favorite_screen.dart';
import 'package:my_ecommerce/screens/home_scren.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({
    super.key,
  });

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  bool selectBottom = true;
  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreen() {
    return [
      const HomeScreen(),
      const FavoriteScreen(),
      const CartScreen(),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.green,
      )
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.home_outlined,
          color: MyColors.pink,
        ),
        inactiveIcon: const Icon(
          Icons.home_outlined,
          color: Colors.black,
        ),
        title: 'Home',
        activeColorPrimary: MyColors.pink,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.favorite_border_outlined,
          color: MyColors.pink,
        ),
        inactiveIcon: const Icon(
          Icons.favorite_outline_outlined,
          color: Colors.black,
        ),
        title: 'Wishlist',
        activeColorPrimary: MyColors.pink,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.shopping_cart_outlined,
          color: MyColors.pink,
        ),
        inactiveIcon: const Icon(
          Icons.shopping_cart_outlined,
          color: Colors.black,
        ),
        activeColorPrimary: MyColors.primarywhite,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.search,
          color: MyColors.pink,
        ),
        inactiveIcon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
        title: 'Search',
        activeColorPrimary: MyColors.pink,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.settings,
          color: MyColors.pink,
        ),
        inactiveIcon: const Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title: 'Setting',
        activeColorPrimary: MyColors.pink,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(),
      items: _navBarItem(),
      controller: controller,
      navBarStyle: NavBarStyle.style15,
      decoration: NavBarDecoration(borderRadius: BorderRadius.circular(4)),
    );
  }
}
