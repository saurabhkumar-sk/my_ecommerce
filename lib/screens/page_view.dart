import 'package:flutter/material.dart';
import 'package:my_ecommerce/screens/cart_screen.dart';
import 'package:my_ecommerce/screens/favorite_screen.dart';
import 'package:my_ecommerce/screens/home_scren.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  int currentIndex = 0;
  Widget? index;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // BottomAppBar(
        //   // shadowColor: MyColors.primarywhite,
        //   color: const Color(0xFFFFFFFF),
        //   child: Row(
        //     children: [
        //       IconButton(icon: const Icon(Icons.home), onPressed: () {}),
        //       const Spacer(),
        //       IconButton(
        //           icon: const Icon(Icons.favorite_border_rounded),
        //           onPressed: () {}),
        //       const Spacer(),
        //       IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        //       const Spacer(),
        //       IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        //     ],
        //   ),
        // ),
        selectedLabelStyle:
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        unselectedLabelStyle:
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),

        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        iconSize: 24,
        backgroundColor: const Color(0xFFFFFFFF),
        selectedItemColor: const Color(0xFFEB3030),
        unselectedItemColor: Colors.black,
        onTap: (value) {
          currentIndex = value;
          setState(() {
            controller.jumpToPage(value);
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          shape: const OvalBorder(),
          child: const Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          const HomeScreen(),
          const FavoriteScreen(),
          const CartScreen(),
          Container(
            color: Colors.pink,
            child: const Text('1'),
          ),
          Container(
            color: Colors.yellow,
            child: const Text('1'),
          ),
        ],
      ),
    );
  }
}
