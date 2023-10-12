import 'package:flutter/material.dart';
import 'package:my_ecommerce/splash/thirs_splash_screen.dart';
import 'package:my_ecommerce/theme/my_color.dart';
import 'package:my_ecommerce/theme/my_image.dart';

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({super.key});

  @override
  State<SecondSplashScreen> createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  int count = 1;
  int count2 = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 17,
              right: 17,
              top: 45,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '$count',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      const TextSpan(
                        text: '/',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: MyColors.fontgrey,
                        ),
                      ),
                      TextSpan(
                        text: '$count2',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: MyColors.fontgrey,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Skip',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 37,
              top: 110,
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
          const SizedBox(height: 10),
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
                  letterSpacing: 0.24,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 295, top: 168),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdSplashScreen(),
                  ),
                );
              },
              child: const Text(
                'Next',
                style: TextStyle(
                  color: MyColors.pink,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
