import 'package:flutter/material.dart';
import 'package:my_ecommerce/screens/page_view.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageViewScreen(),
            ),
          );
        },
        child: Image.asset(
          'assets/images/unsplash_fouVDmGXoPI.png',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
