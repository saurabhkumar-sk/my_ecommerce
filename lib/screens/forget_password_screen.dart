import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';
import 'package:my_ecommerce/screens/get_started_screen.dart';
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
              child: SizedBox(
                height: 55,
                width: 317,
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: MyIcon.message,
                    fillColor: Colors.amber,
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
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(282, 48)),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: '*', style: TextStyle(color: MyColors.pink)),
                    TextSpan(
                      text:
                          'We will send you a message to set or reset your new password',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF676767),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 26),
            SizedBox(
              width: 317,
              height: 55,
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
                      builder: (context) => const GetStartedScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
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
