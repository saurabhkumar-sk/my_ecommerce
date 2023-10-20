import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ecommerce/database/database.dart';

class AppbarActionWidget extends StatelessWidget {
  const AppbarActionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: GestureDetector(
        onTap: () {},
        child: const CircleAvatar(
          backgroundImage: AssetImage(
            MyImages.avatar,
          ),
        ),
      ),
    );
  }
}

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(MyImages.logo),
        const Text(
          'Stylish',
          style: TextStyle(
            color: MyColors.cyan,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
