import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';

class ShippingScreen extends StatelessWidget {
  const ShippingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            const SizedBox(height: 22),
            const Divider(),
            const SizedBox(height: 28),
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
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: '204356XXXXXXX',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: MyColors.black,
                  fontSize: 13,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            TextFormField(
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: '204356XXXXXXX',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: MyColors.black,
                  fontSize: 13,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            TextFormField(
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: '204356XXXXXXX',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: MyColors.black,
                  fontSize: 13,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            TextFormField(
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: '204356XXXXXXX',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: MyColors.black,
                  fontSize: 13,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
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
                    builder: (context) => const AlertDialog(
                      surfaceTintColor: Colors.transparent,
                      backgroundColor: MyColors.primarywhite,
                      shape: BeveledRectangleBorder(
                        side: BorderSide.none,
                      ),
                      title: Icon(
                        Icons.check_circle_sharp,
                        color: MyColors.pink,
                        size: 91,
                      ),
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
    );
  }
}
