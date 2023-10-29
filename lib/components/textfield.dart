import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.primarywhite,
      height: 40,
      width: 343,
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search any Product..',
          hintStyle: TextStyle(color: Color(0xFFBBBBBB)),
          prefixIcon: Icon(Icons.search_sharp, color: Color(0xFFBBBBBB)),
          suffixIcon: Icon(Icons.mic_none, color: Color(0xFFBBBBBB)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
        ),
      ),
    );
  }
}
