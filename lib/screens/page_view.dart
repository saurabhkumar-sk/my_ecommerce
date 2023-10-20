import 'package:flutter/material.dart';
import 'package:my_ecommerce/screens/favorite_screen.dart';
import 'package:my_ecommerce/screens/home_scren.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  int currentIndex = 0;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          const HomeScreen(),
          const FavoriteScreen(),
          Container(
            color: Colors.blue,
            child: const Text('1'),
          ),
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
