//Cart sccreen button (shoes size)

import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';

class Buttonsize extends StatefulWidget {
  const Buttonsize({
    super.key,
  });

  @override
  State<Buttonsize> createState() => _ButtonsizeState();
}

class _ButtonsizeState extends State<Buttonsize> {
  final int index = 6;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          fixedSize: const MaterialStatePropertyAll(Size(50, 32)),
          // overlayColor: MaterialStatePropertyAll(Colors.red),
          // backgroundColor: MaterialStatePropertyAll(Colors.red),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: const BorderSide(
                color: MyColors.pink,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        child: Text(
          '$index UK',
          style: const TextStyle(
            color: MyColors.pink,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
