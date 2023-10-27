//Cart Screen Buttons

import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';
import 'package:my_ecommerce/screens/checkout_profile_screen.dart';

class NearestStoreButton extends StatelessWidget {
  const NearestStoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style: const ButtonStyle(
          textStyle: MaterialStatePropertyAll(TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 10,
          )),
          iconSize: MaterialStatePropertyAll(16),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              side: BorderSide(
                color: MyColors.grey2,
              ),
            ),
          ),
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.location_on,
          color: MyColors.grey2,
        ),
        label: const Text(
          'Nearest Store',
          style: TextStyle(
            color: MyColors.grey2,
          ),
        ));
  }
}
//Cart Screen Buttons

class VipButton extends StatelessWidget {
  const VipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: TextButton.icon(
        style: const ButtonStyle(
          textStyle: MaterialStatePropertyAll(TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 10,
          )),
          iconSize: MaterialStatePropertyAll(16),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              side: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.lock,
          color: MyColors.grey2,
        ),
        label: const Text(
          'VIP',
          style: TextStyle(
            color: MyColors.grey2,
          ),
        ),
      ),
    );
  }
}
//Cart Screen Buttons

class ReturnPolicyBtton extends StatelessWidget {
  const ReturnPolicyBtton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: TextButton.icon(
        style: const ButtonStyle(
          textStyle: MaterialStatePropertyAll(TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 10,
          )),
          iconSize: MaterialStatePropertyAll(16),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              side: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.sync,
          color: MyColors.grey2,
        ),
        label: const Text(
          'Return policy',
          style: TextStyle(
            color: MyColors.grey2,
          ),
        ),
      ),
    );
  }
}

class GoToCart extends StatelessWidget {
  const GoToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(4),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(4),
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  transform: GradientRotation(5),
                  colors: [
                    Color(0xFF0B3689),
                    Color(0xFF3F92FF),
                  ],
                ),
              ),
              height: 36, width: 136,
              // onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.only(left: 48, top: 5),
                child: Text(
                  'Go to cart',
                  style: TextStyle(
                    fontSize: 16,
                    // fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat.w500',

                    color: MyColors.primarywhite,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                transform: GradientRotation(5),
                colors: [
                  Color(0xFF0B3689),
                  Color(0xFF3F92FF),
                ],
              ),
            ),
            child: const Icon(
              Icons.shopping_cart_outlined,
              color: MyColors.primarywhite,
            ),
          ),
        ],
      ),
    );
  }
}

class BuyNow extends StatelessWidget {
  const BuyNow({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(4),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(4),
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  transform: GradientRotation(5),
                  colors: [
                    Color(0xFF31B769),
                    Color(0xFF71F9A9),
                  ],
                ),
              ),
              height: 36, width: 136,
              // onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.only(left: 48, top: 5),
                child: Text(
                  'Go to cart',
                  style: TextStyle(
                    fontSize: 16,
                    // fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat.w500',

                    color: MyColors.primarywhite,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                transform: GradientRotation(5),
                colors: [
                  Color(0xFF31B769),
                  Color(0xFF71F9A9),
                ],
              ),
            ),
            child: const Icon(
              Icons.ads_click,
              color: MyColors.primarywhite,
            ),
          ),
        ],
      ),
    );
  }
}

//View Similar
class ViewSimilar extends StatelessWidget {
  const ViewSimilar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: TextButton.icon(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(MyColors.primarywhite),
          textStyle: MaterialStatePropertyAll(TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          )),
          iconSize: MaterialStatePropertyAll(24),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              side: BorderSide(
                color: Color(0xFFD9D9D9),
                width: 0.5,
              ),
            ),
          ),
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.remove_red_eye_outlined,
          color: Color(0xFF323232),
        ),
        label: const Text(
          'View Similar          ',
          style: TextStyle(
            color: MyColors.black,
          ),
        ),
      ),
    );
  }
}

//Add to compare
class AddToCompare extends StatelessWidget {
  const AddToCompare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: TextButton.icon(
        style: const ButtonStyle(
          textStyle: MaterialStatePropertyAll(TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          )),
          iconSize: MaterialStatePropertyAll(24),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              side: BorderSide(
                width: 0.5,
                color: Color(0xFFD9D9D9),
              ),
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CheckoutProfileScreen(),
              ));
        },
        icon: const Icon(
          Icons.compare,
          color: Color(0xFF323232),
        ),
        label: const Text(
          'Add to Comapare    ',
          style: TextStyle(
            color: MyColors.black,
          ),
        ),
      ),
    );
  }
}
