import 'package:flutter/material.dart';
import 'package:my_ecommerce/theme/my_color.dart';
import 'package:my_ecommerce/theme/my_image.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 63),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: MyColors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: 'Forgot\n',
                    ),
                    TextSpan(
                      text: 'password?',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: MyIcon.message,
                  hintText: MyText.email,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(text: '*', style: TextStyle(color: MyColors.pink)),
                  TextSpan(
                      text:
                          'We will send you a message to set or reset your new password',
                      style: TextStyle(color: MyColors.grey)),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
