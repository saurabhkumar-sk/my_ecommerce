import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ecommerce/splash/first_splash_screen.dart';
import 'package:my_ecommerce/theme/my_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const FirstSplashScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(MyLogos.splashlogo),
      ),
    );
  }
}
