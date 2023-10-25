//Cart Screen Buttons
import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';

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
