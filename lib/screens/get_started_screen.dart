import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';
import 'package:my_ecommerce/screens/page_view.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/unsplash_fouVDmGXoPI.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            bottom: 169,
            left: 37,
            right: 38.33,
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(315, 150)),
              child: const Text(
                'You want Authentic, here you go!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 133,
            left: 110,
            // right: 38.33,
            child: Text(
              'Find it here, buy it now!',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          Positioned(
            bottom: 47,
            left: 55,
            right: 56,
            child: SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF83758),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PageViewScreen(),
                      ));
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
