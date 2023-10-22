import 'package:flutter/material.dart';
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
  static const avatar = 'assets/images/avatar.png';
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
  ImageModel(image: 'assets/images/Ellipse 4.png', imageName: 'Beauty'),
  ImageModel(image: 'assets/images/fashion.png', imageName: 'Fashion'),
  ImageModel(
      image: 'assets/images/unsplash_GCDjllzoKLo.png', imageName: 'Kids'),
  ImageModel(image: 'assets/images/mens.png', imageName: 'Mens'),
  ImageModel(image: 'assets/images/womens.png', imageName: 'Womens'),
  ImageModel(image: 'assets/images/fashion.png', imageName: 'Winter'),
];

//Product model
List<ProductModel> products = [
  ProductModel(
    image: 'assets/images/girl.png',
    productName: 'Women Printed Kurta',
    productDescription: 'Neque porro quisquam est qui dolorem ipsum quia',
    price: '₹1500',
    discountPrice: '₹2499 40%Off',
    icon: 'icon',
  ),
  ProductModel(
    image: 'assets/images/shoes.png',
    productName: 'HRX by Hrithik Roshan',
    productDescription: 'Neque porro quisquam est qui dolorem ipsum quia',
    price: '₹2499',
    discountPrice: '₹4999 50%Off',
    icon: 'icon',
  ),
  ProductModel(
    image: 'assets/images/girl.png',
    productName: 'Women Printed Kurta',
    productDescription: 'Neque porro quisquam est qui dolorem ipsum quia',
    price: '₹1500',
    discountPrice: '₹2499 40%Off',
    icon: 'icon',
  ),
  ProductModel(
    image: 'assets/images/shoes.png',
    productName: 'HRX by Hrithik Roshan',
    productDescription: 'Neque porro quisquam est qui dolorem ipsum quia',
    price: '₹2499',
    discountPrice: '₹4999 50%Off',
    icon: 'icon',
  ),
];

//5 star
List<IconLogo> iconLogo = [
  IconLogo(
    icon: const Icon(
      Icons.star,
      color: Color.fromARGB(255, 195, 178, 23),
      size: 11,
    ),
  ),
  IconLogo(
    icon: const Icon(
      Icons.star,
      color: Color.fromARGB(255, 195, 178, 23),
      size: 11,
    ),
  ),
  IconLogo(
    icon: const Icon(
      Icons.star,
      color: Color.fromARGB(255, 195, 178, 23),
      size: 11,
    ),
  ),
  IconLogo(
    icon: const Icon(
      Icons.star,
      color: Color.fromARGB(255, 195, 178, 23),
      size: 11,
    ),
  ),
  IconLogo(
    icon: const Icon(
      Icons.star_half,
      color: Colors.grey,
      size: 11,
    ),
  ),
];

//
List<ProductModel> product = [
  ProductModel(
    image: 'assets/images/watch.png',
    productName: 'IWC Schaffhausen 2021 Pilot/s Watch "SIHH 2019" 44mm',
    productDescription: '',
    price: '₹650',
    discountPrice: '₹1599 60%Off',
    icon: 'icon',
  ),
  ProductModel(
    image: 'assets/images/image 18.png',
    productName: 'Labbin White Sneakers For Men and Female',
    productDescription: 'Neque porro quisquam est qui dolorem ipsum quia',
    price: '₹650',
    discountPrice: '₹1250 70%Off',
    icon: 'icon',
  ),
  ProductModel(
    image: 'assets/images/watch.png',
    productName: 'IWC Schaffhausen 2021 Pilot/s Watch "SIHH 2019" 44mm',
    productDescription: '',
    price: '₹650',
    discountPrice: '₹1599 60%Off',
    icon: 'icon',
  ),
  ProductModel(
    image: 'assets/images/image 18.png',
    productName: 'Labbin White Sneakers For Men and Female',
    productDescription: 'Neque porro quisquam est qui dolorem ipsum quia',
    price: '₹650',
    discountPrice: '₹1250 70%Off',
    icon: 'icon',
  ),
];

//Favroitscreen images model
List<FavroiteImages> favroiteImages = [
  FavroiteImages(
    image: 'assets/images/unsplash_NoVnXXmDNi0.png',
    productName: 'Black Winter....',
    productDescription: 'Autumn And Winter Casual cotton-padded jacket...',
    price: '₹499',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image: 'assets/images/unsplash_0vsk2_9dkqo.png',
    productName: 'Mens Starry',
    productDescription: 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
    price: '₹399',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image: 'assets/images/unsplash_yTBMYCcZQRs.png',
    productName: 'Black Dress',
    productDescription:
        'Solid Black Dress for Women, Sexy Chain Shorts Ladi...',
    price: '₹2,000',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image:'assets/images/unsplash_Pdds9XsWyoM.png',
    productName: 'Pink Embroide...',
    productDescription: 'EARTHEN Rose Pink Embroidered Tiered Max...',
    price: '₹1,900',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image: 'assets/images/unsplash_9U18fiowwbw.png',
    productName: 'Flare Dress',
    productDescription:
        'Antheaa Black & Rust Orange Floral Print Tiered Midi F...',
    price: '₹1,990',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image: 'assets/images/unsplash_0vsk2_9dkqo (1).png',
    productName: 'denim dress',
    productDescription: 'Blue cotton denim dress Look 2 Printed cotton dr...',
    price: '₹999',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image: 'assets/images/unsplash_yTBMYCcZQRs (1).png',
    productName: 'Jordan Stay',
    productDescription:
        'The classic Air Jordan 12 to create a shoe that\'s fres...',
    price: '₹4,999',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image: 'assets/images/unsplash_Pdds9XsWyoM (1).png',
    productName: 'Realme 7 ',
    productDescription: '6 GB RAM | 64 GB ROM | Expandable Upto 256...',
    price: '₹3,499',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image: 'assets/images/unsplash_9U18fiowwbw (1).png',
    productName: 'Sony PS4',
    productDescription: 'Autumn And Winter Casual cotton-padded jacket...',
    price: '₹1,999',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image: 'assets/images/unsplash_0vsk2_9dkqo (2).png',
    productName: 'Black Jacket 12...',
    productDescription:
        'This warm and comfortable jacket is great for learni...',
    price: '₹2,999',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image: 'assets/images/unsplash_yTBMYCcZQRs (2).png',
    productName: 'D7200 Digital C...',
    productDescription: 'D7200 Digital Camera (Nikon) In New Area...',
    price: '₹26,999',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image: 'assets/images/unsplash_Pdds9XsWyoM (2).png',
    productName: 'men’s & boys s...',
    productDescription: 'George Walker Derby Brown Formal Shoes',
    price: '₹999',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image: 'assets/images/unsplash_9U18fiowwbw (2).png',
    productName: 'MB....',
    productDescription: 'Autumn And Winter Casual cotton-padded jacket...',
    price: '₹499',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
  FavroiteImages(
    image: 'assets/images/unsplash_0vsk2_9dkqo (3).png',
    productName: 'ChocoBar',
    productDescription: 'Autumn And Winter Casual cotton-padded jacket...',
    price: '₹299',
    icon: const Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star_half),
      ],
    ),
  ),
];
