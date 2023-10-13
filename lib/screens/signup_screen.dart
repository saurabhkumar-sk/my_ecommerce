import 'package:flutter/material.dart';
import 'package:my_ecommerce/theme/my_color.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 63),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Create an',
                  ),
                  TextSpan(text: '\naccount'),
                ],
              ),
            ),
            const SizedBox(height: 33),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.person,
                  color: MyColors.grey,
                ),
                labelText: "Username or Email",
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
            ),
            const SizedBox(height: 31),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: MyColors.grey,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: MyColors.grey,
                ),
                labelText: 'Password',
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 31),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: MyColors.grey,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: MyColors.grey,
                ),
                labelText: 'ConfirmPassword',
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 19),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  // fontSize: 36,
                  // fontWeight: FontWeight.w700,
                  color: MyColors.grey,
                ),
                children: [
                  TextSpan(
                    text: 'By clicking the ',
                  ),
                  TextSpan(
                    text: 'Register ',
                    style: TextStyle(
                      color: MyColors.orange,
                    ),
                  ),
                  TextSpan(text: 'button, you agree \nto the public offer'),
                ],
              ),
            ),
            const SizedBox(height: 38),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF83758),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Create Account",
                  style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 110,
                top: 40,
              ),
              child: Text(
                "- OR Continue with -",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: MyColors.grey1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 66, top: 20),
              child: Row(
                children: [
                  socialMediaAuthButtons(
                    widget: Image.asset('assets/images/google 1.png'),
                  ),
                  socialMediaAuthButtons(
                    widget: Image.asset('assets/images/apple 1.png'),
                  ),
                  socialMediaAuthButtons(
                    widget:
                        Image.asset('assets/images/facebook-app-symbol 1.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'I Already Have an Account ',
                        style: TextStyle(
                          color: MyColors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: MyColors.pink,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

//Authentification buttons
  Container socialMediaAuthButtons({required Widget widget}) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 54,
      width: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 1, color: MyColors.pink),
      ),
      child: widget,
    );
  }
}
