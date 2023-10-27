import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';
import 'package:my_ecommerce/screens/forget_password_screen.dart';
import 'package:my_ecommerce/screens/get_started_screen.dart';
import 'package:my_ecommerce/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 63),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Welcome',
                  ),
                  TextSpan(text: '\nBack!'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 36, left: 32, right: 26),
            child: TextFormField(
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
          ),
          const Padding(
            padding: EdgeInsets.only(top: 31, left: 32, right: 26),
            child: TextField(
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
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgetPasswordScreen(),
                  ));
            },
            child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: MyColors.pink,
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 29,
              right: 29,
              top: 45,
            ),
            child: SizedBox(
              width: double.infinity,
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
                      ));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 75),
          const Align(
            alignment: Alignment.center,
            child: Text("- OR Continue with -"),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              socialMediaAuthButtons(
                  widget: Image.asset('assets/images/google 1.png')),
              socialMediaAuthButtons(
                  widget: Image.asset('assets/images/apple 1.png')),
              socialMediaAuthButtons(
                  widget:
                      Image.asset('assets/images/facebook-app-symbol 1.png')),
            ],
          ),
          const SizedBox(height: 29),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ));
              },
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Create An Account ',
                      style: TextStyle(
                        color: MyColors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign Up',
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
