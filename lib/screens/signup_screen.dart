import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';
import 'package:my_ecommerce/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29),
        child: SingleChildScrollView(
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
                controller: emailcontroller,
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
              TextField(
                controller: passwordcontroller,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: MyColors.grey,
                    size: 20,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    size: 20,
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
              TextField(
                controller: passwordcontroller,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 20,
                    color: MyColors.grey,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: MyColors.grey,
                    size: 20,
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
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
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
                  onPressed: () {
                    FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: emailcontroller.text,
                      password: passwordcontroller.text,
                    );
                  },
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
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  "- OR Continue with -",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: MyColors.grey1,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
              const SizedBox(height: 15),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                        (route) => false);
                  },
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
