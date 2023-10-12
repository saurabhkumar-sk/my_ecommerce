import 'package:flutter/material.dart';
import 'package:my_ecommerce/theme/my_color.dart';
import 'package:my_ecommerce/theme/my_image.dart';

class SecondSplashScreen extends StatelessWidget {
  const SecondSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 37,
              top: 177,
              bottom: 15,
            ),
            child: Image.asset(
              MyImages.fashionsshop,
            ),
          ),
          const Text(
            'Choose Products',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(
                const Size(340, 72),
              ),
              child: const Text(
                textAlign: TextAlign.center,
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: MyColors.fontgrey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
