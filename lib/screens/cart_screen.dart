import 'package:flutter/material.dart';
import 'package:my_ecommerce/components/button.dart';
import 'package:my_ecommerce/database/database.dart';
import 'package:my_ecommerce/screens/home_scren.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: WillPopScope(
            onWillPop: () async {
              return true;
            },
            child: const Icon(Icons.arrow_back_ios_new)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 12),
                child: Center(
                  child: SizedBox(
                    width: 350,
                    height: 213,
                    child: Stack(
                      children: [
                        PageView(
                          children: [
                            Image.asset(
                              'assets/images/unsplash_NoVnXXmDNi0 (1).png',
                              fit: BoxFit.fill,
                            ),
                            Image.asset(
                              favroiteImages.first.image,
                              fit: BoxFit.fill,
                            ),
                            Image.asset(
                              favroiteImages.first.image,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleR(),
                  CircleR(),
                  CircleR(),
                  CircleR(),
                  CircleR(),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Size: 7UK',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 12),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Buttonsize(),
                  Buttonsize(),
                  Buttonsize(),
                  Buttonsize(),
                  Buttonsize(),
                ],
              ),
              Text(
                favroiteImages.first.productName,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const Text(
                'Vision Alta Men’s Shoes Size (All Colours)',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              const Text(
                '₹1,500',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const Text(
                'Product Details',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const Text(
                'Perhaps the most iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const Buttons(),
            ],
          ),
        ),
      ),
    );
  }
}
