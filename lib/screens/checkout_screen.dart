import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text(
          'Checkout',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 31),
              Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/images/2289_SkVNQSBGQU1PIDEwMjgtMTE2 2.png'),
                      radius: 50,
                    ),
                    Positioned(
                      left: 71,
                      top: 66,
                      child: ClipOval(
                        child: Container(
                          height: 32,
                          width: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 75,
                      top: 69.5,
                      child: ClipOval(
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                            // border: Border.all(width: 2),
                            color: Colors.blue,
                          ),
                          child: const Icon(
                            Icons.edit,
                            size: 15,
                            color: MyColors.primarywhite,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Personal Details',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Email Address',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: MyColors.black),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 48,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: Characters('@gmail.com'),
                  decoration: const InputDecoration(
                    hintText: 'aashifa@gmail.com',
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
              ),
              const SizedBox(height: 28),
              const Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 48,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: Characters('name@#234&sd'),
                  decoration: const InputDecoration(
                    hintText: '************',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: MyColors.black,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Change Password',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: MyColors.pink,
                    color: MyColors.pink,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 36),
              const Divider(),
              const SizedBox(height: 34),
              const Text(
                'Business Address Details',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 22),
              const Text(
                'Pincode',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: MyColors.black),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 48,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: '450116',
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
              ),
              const SizedBox(height: 15),
              const Text(
                'Address',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: MyColors.black),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 48,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: '216 St Paul\'s Rd,',
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
              ),
              const SizedBox(height: 28),
              const Text(
                'City',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: MyColors.black),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 48,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'London',
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
              ),
              const SizedBox(height: 28),
              const Text(
                'State',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: MyColors.black),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 48,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'N1 2LL,',
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
              ),
              const SizedBox(height: 28),
              const Text(
                'Country',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: MyColors.black),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 48,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'United Kingdom',
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
              ),
              const SizedBox(height: 34),
              const Divider(),
              const SizedBox(height: 32),
              const Text(
                'Bank Account Details',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Bank Account Number',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: MyColors.black),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 48,
                child: TextFormField(
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
              ),
              const SizedBox(height: 28),
              const Text(
                'Account Holder’s Name',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: MyColors.black),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 48,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Abhiraj Sisodiya',
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
              ),
              const SizedBox(height: 28),
              const Text(
                'IFSC Code',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: MyColors.black),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 48,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'SBIN00428',
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
              ),
              const SizedBox(height: 34),
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
                    "Save",
                    style: TextStyle(
                      color: MyColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 57),
            ],
          ),
        ),
      ),
    );
  }
}
