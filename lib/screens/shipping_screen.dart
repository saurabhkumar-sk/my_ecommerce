import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';

class ShippingScreen extends StatefulWidget {
  const ShippingScreen({super.key});

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA8A8A9),
                    ),
                  ),
                  Text(
                    '₹ 7,000',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFA8A8A9),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 18),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA8A8A9),
                    ),
                  ),
                  Text(
                    '₹ 30',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFA8A8A9),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 18),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: MyColors.black,
                    ),
                  ),
                  Text(
                    '₹ 7,030.00',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: MyColors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Divider(),
              const SizedBox(height: 15),
              const Text(
                'Payment',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: MyColors.black,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                textAlign: TextAlign.right,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: MyColors.pink,
                      width: 1.5,
                    ),
                  ),
                  prefixIcon: Image.asset(
                    'assets/images/visa 1.png',
                    height: 20,
                    width: 48,
                  ),
                  hintText: '*********2109',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: MyColors.black,
                    fontSize: 15,
                  ),
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 25),
              TextFormField(
                textAlign: TextAlign.right,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: MyColors.pink,
                      width: 1.5,
                    ),
                  ),
                  prefixIcon: Image.asset(
                    'assets/images/paypal 1.png',
                    height: 20,
                    width: 48,
                  ),
                  hintText: '*********2109',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: MyColors.black,
                    fontSize: 15,
                  ),
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 25),
              TextFormField(
                textAlign: TextAlign.right,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: MyColors.pink,
                      width: 1.5,
                    ),
                  ),
                  prefixIcon: Image.asset(
                    'assets/images/maestro 1.png',
                    height: 20,
                    width: 48,
                  ),
                  hintText: '*********2109',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: MyColors.black,
                    fontSize: 15,
                  ),
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 25),
              TextFormField(
                textAlign: TextAlign.right,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: MyColors.pink,
                      width: 1.5,
                    ),
                  ),
                  prefixIcon: Image.asset(
                    'assets/images/Sign in with Apple (Logo-only).png',
                  ),
                  hintText: '*********2109',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: MyColors.black,
                    fontSize: 15,
                  ),
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 59,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF83758),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      useSafeArea: true,
                      context: context,
                      builder: (context) => Stack(
                        children: [
                          AlertDialog(
                            surfaceTintColor: Colors.transparent,
                            backgroundColor: MyColors.primarywhite,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),

                            title: Column(
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/Star 1.png',
                                      height: 91,
                                      width: 91,
                                    ),
                                    const Positioned(
                                      top: 20,
                                      left: 20,
                                      child: Icon(
                                        Icons.done,
                                        color: MyColors.primarywhite,
                                        size: 50,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                const Text(
                                  'Payment done successfully.',
                                  style: TextStyle(
                                    color: MyColors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),

                            // size: 91,
                          ),
                          Positioned(
                            left: 100,
                            top: 297,
                            child: Image.asset(
                              'assets/images/Star 8.png',
                            ),
                          ),
                          Positioned(
                            left: 240,
                            top: 322,
                            child: Image.asset(
                              'assets/images/Star 8.png',
                            ),
                          ),
                          Positioned(
                            left: 117,
                            top: 377,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 238, 160, 174),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 117,
                            top: 337,
                            child: ClipOval(
                              child: Container(
                                height: 7,
                                width: 7,
                                color: const Color.fromARGB(255, 238, 160, 174),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 190,
                            top: 286,
                            child: ClipOval(
                              child: Container(
                                height: 7,
                                width: 7,
                                color: const Color.fromARGB(255, 238, 160, 174),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 230,
                            top: 370,
                            child: ClipOval(
                              child: Container(
                                height: 7,
                                width: 7,
                                color: const Color.fromARGB(255, 238, 160, 174),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      color: MyColors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
