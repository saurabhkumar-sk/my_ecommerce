import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ecommerce/theme/my_image.dart';
import 'package:my_ecommerce/splash/second_splash_screen.dart';

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
            builder: (context) => const SecondSplashScreen(),
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
