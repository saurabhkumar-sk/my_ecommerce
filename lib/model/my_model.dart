import 'package:flutter/material.dart';

class ImageModel {
  final String image;
  final String imageName;

  ImageModel({required this.image, required this.imageName});
}

class ProductModel {
  final String image;
  final String productName;
  final String productDescription;
  final String price;
  final String discountPrice;
  final String icon;

  ProductModel({
    required this.image,
    required this.productName,
    required this.productDescription,
    required this.price,
    required this.discountPrice,
    required this.icon,
  });
}

class IconLogo {
  final Icon icon;

  IconLogo({required this.icon});
}





//favorite Screen Images
class FavroiteImages {
  final String image;
  final String productName;
  final String productDescription;
  final String price;
  final Widget icon;

  FavroiteImages(
      {required this.image,
      required this.productName,
      required this.productDescription,
      required this.price,
      required this.icon});
}
