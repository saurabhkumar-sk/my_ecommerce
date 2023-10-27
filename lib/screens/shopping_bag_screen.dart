import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 38),
              Row(
                children: [
                  SizedBox(
                    width: 123,
                    height: 153,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        products[0].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 21),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Women’s Casual Wear',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ConstrainedBox(
                        constraints: BoxConstraints.tight(
                          const Size(188, 34),
                        ),
                        child: const Text(
                          'Checked Single-Breasted Blazer',
                          style: TextStyle(
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
              const SizedBox(height: 35),
              Row(
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
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 35),
              const Text(
                'Order Payment Details',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: MyColors.black,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 26),
              const Row(
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
              const SizedBox(height: 12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Convenience',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: MyColors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Know More',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: MyColors.pink,
                      fontSize: 12,
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
              const SizedBox(height: 12),
              const Row(
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
              const SizedBox(height: 41),
              const Divider(),
              const SizedBox(height: 29),
              const Row(
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
              const SizedBox(height: 12),
              const Row(
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
              const SizedBox(height: 43),
            ],
          ),
        ),
      ),
    );
  }
}
