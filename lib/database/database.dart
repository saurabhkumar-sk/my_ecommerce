import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_ecommerce/model/my_model.dart';

class MyColors {
  static const fontgrey = Color(0xFFA8A8A9);
  static const pink = Color(0xFFF83758);
  static const white = Color(0xFFF3F3F3);
  static const grey = Color(0xFF626262);
  static const grey1 = Color(0xFF575757);
  static const orange = Color(0xFFFF4B26);
  static const black = Color(0xFF000000);
  static const cyan = Color(0xFF4392F9);
  static const primarywhite = Color(0xFFFFFFFF);
}

class MyLogos {
  static const splashlogo = 'assets/svg/logoipsum-255 1.svg';
}

class MyImages {
  static const fashionsshop = 'assets/images/fashion shop-rafiki 1.png';
  static const saleconsulting = 'assets/images/Sales consulting-pana 1.png';
  static const shoppingbag = 'assets/images/Shopping bag-rafiki 1.png';
  static const facebook = 'assets/images/facebook-app-symbol 1.png';
  static const google = 'assets/images/google 1.png';
  static const apple = 'assets/images/apple 1.png';
  static const avatar = 'assets/images/2289_SkVNQSBGQU1PIDEwMjgtMTE2 1.png';
  static const logo = 'assets/svg/Group 34010 (1).svg';
}

class MyIcon {
  static const message = Icon(Icons.mail);
}

class MyText {
  static const email = 'Enter Your email address';
}

//Home Screen Images

List<ImageModel> image = [
  ImageModel(image: 'assets/svg/Group 34010 (1).svg', imageName: 'beauty'),
  ImageModel(image: 'assets/svg/Group 34010 (1).svg', imageName: 'fashion'),
  ImageModel(image: 'assets/svg/Group 34010 (1).svg', imageName: 'kids'),
  ImageModel(image: 'assets/svg/Group 34010 (1).svg', imageName: 'mens'),
  ImageModel(image: 'assets/svg/Group 34010 (1).svg', imageName: 'womens'),
];


// List<ImageModel> image = [
//   ImageModel(image: 'assets/images/Ellipse 4.png', imageName: 'Beauty'),
//   ImageModel(image: 'assets/images/fashion.png', imageName: 'Fashion'),
//   ImageModel(
//       image: 'assets/images/unsplash_GCDjllzoKLo.png', imageName: 'Kids'),
//   ImageModel(image: 'assets/images/mens.png', imageName: 'Mens'),
//   ImageModel(image: 'assets/images/womens.png', imageName: 'Womens'),
//   ImageModel(image: 'assets/images/fashion.png', imageName: 'Winter'),
// ];