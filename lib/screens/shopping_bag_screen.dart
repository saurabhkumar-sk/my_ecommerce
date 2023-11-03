import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';
import 'package:my_ecommerce/screens/checkout_profile_screen.dart';

class ShoppingBagScreen extends StatelessWidget {
  const ShoppingBagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'Shopping Bag',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            ...List.generate(1, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  children: [
                    SizedBox(
                      width: 123,
                      height: 153,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          products[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 21),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index].productName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ConstrainedBox(
                          constraints: BoxConstraints.tight(
                            const Size(188, 34),
                          ),
                          child: Text(
                            products[index].productDescription,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            SizedBox(
                              height: 28,
                              width: 86,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                child: Row(
                                  children: [
                                    Text(
                                      ' Size 42 ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(
                                        Icons.expand_more_rounded,
                                        size: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 28,
                              width: 86,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                child: Row(
                                  children: [
                                    Text(
                                      ' Qty  1    ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(
                                        Icons.expand_more_rounded,
                                        size: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 11),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Delivery by  ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '10 May 2XXX',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.confirmation_num_outlined,
                      color: MyColors.black,
                    ),
                    label: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Apply coupons',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: MyColors.black,
                            fontSize: 16,
                          ),
                        )),
                  ),
                  const Text(
                    'Select',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: MyColors.pink,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Divider(),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Text(
                'Order Payment Details',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: MyColors.black,
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Amount',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: MyColors.black,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    '₹ 7000.00',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: MyColors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Convenience  ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: MyColors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' Know More',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: MyColors.pink,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Apply Coupon',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: MyColors.pink,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Fee',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: MyColors.black,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Free',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: MyColors.pink,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Divider(),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Total',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: MyColors.black,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    '₹ 7000.00',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: MyColors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                children: [
                  Text(
                    'EMI Available   ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: MyColors.black,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '   Details',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: MyColors.pink,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    border: Border.fromBorderSide(
                      BorderSide(
                        width: 0.1,
                      ),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '₹ 7000.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: MyColors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'View Details',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: MyColors.pink,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 225,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF83758),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const CheckoutProfileScreen(),
                              ));
                        },
                        child: const Text(
                          "Proceed to Payment",
                          style: TextStyle(
                            color: MyColors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 17,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
