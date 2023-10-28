import 'package:flutter/material.dart';
import 'package:my_ecommerce/screens/on_boarding_screen.dart';

void main() {
  runApp(const MyEcommerceApp());
}

class MyEcommerceApp extends StatelessWidget {
  const MyEcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const CheckOutScreen(),
      // home: const CheckoutProfileScreen(),
      // home: const HomeScreen(),
      home: const OnBoardingScreen(),
    );
  }
}
