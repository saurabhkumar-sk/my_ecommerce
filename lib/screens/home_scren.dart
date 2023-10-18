import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ecommerce/database/database.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(191, 67, 67, 67),
      drawer: const Drawer(),
      appBar: AppBar(
        title: Row(
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
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  MyImages.avatar,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Container(
                color: MyColors.primarywhite,
                height: 40,
                width: 343,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search any Product..',
                    hintStyle: TextStyle(color: Color(0xFFBBBBBB)),
                    prefixIcon:
                        Icon(Icons.search_sharp, color: Color(0xFFBBBBBB)),
                    suffixIcon: Icon(Icons.mic_none, color: Color(0xFFBBBBBB)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, top: 17),
              child: Row(
                children: [
                  const Text(
                    'All Featured',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 79),
                    child: Container(
                      color: MyColors.primarywhite,
                      height: 24,
                      width: 67,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Row(
                          children: [
                            Text(
                              'Sort ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Icon(
                              Icons.import_export,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Container(
                      color: MyColors.primarywhite,
                      height: 24,
                      width: 67,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Row(
                          children: [
                            Text(
                              'Filter',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Icon(
                              Icons.filter_alt_outlined,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 17),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: MyColors.primarywhite,
                ),
                margin: const EdgeInsets.only(left: 17),
                height: 87,
                width: 439,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      image.length,
                      // 6,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                image[index].image,
                              ),
                              radius: 28,
                            ),
                            Text(
                              image[index].imageName,
                              // 6.toString(),
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 189,
              width: 350,
              child: PageView(
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/Rectangle 48.png'),
                      const Positioned(
                        left: 14,
                        top: 40,
                        child: Text(
                          '50-40% OFF',
                          style: TextStyle(
                            color: MyColors.primarywhite,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 14,
                        top: 90,
                        child: Text(
                          'All colours',
                          style: TextStyle(
                            color: MyColors.primarywhite,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 70,
                        left: 14,
                        child: Text(
                          'Now in (product)',
                          style: TextStyle(
                            color: MyColors.primarywhite,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 117,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              width: 1,
                              color: MyColors.primarywhite,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            fixedSize: const Size(129, 32),
                          ),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                'Shop Now',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: MyColors.primarywhite),
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                size: 16,
                                color: MyColors.primarywhite,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset('assets/images/Rectangle 48.png'),
                  Image.asset('assets/images/Rectangle 48.png'),
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 158, top: 8),
              child: const Row(
                children: [
                  CircleR(),
                  CircleR(),
                  CircleR(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Stack(
                children: [
                  Container(
                    height: 60,
                    width: 343,
                    decoration: const BoxDecoration(
                      color: MyColors.cyan,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 8,
                    left: 8,
                    child: Text(
                      'Deal of the Day',
                      style: TextStyle(
                        color: MyColors.primarywhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 8,
                    top: 36,
                    child: Row(
                      children: [
                        Icon(
                          Icons.alarm,
                          color: MyColors.primarywhite,
                          size: 16,
                        ),
                        Text(
                          ' 22h 55m 20s remaining ',
                          style: TextStyle(
                            color: MyColors.primarywhite,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 215,
                    right: 12,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          width: 1,
                          color: MyColors.primarywhite,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        fixedSize: const Size(89, 32),
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            'View All',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: MyColors.primarywhite),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 16,
                            color: MyColors.primarywhite,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    products.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: MyColors.primarywhite,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.asset(
                                products[index].image,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: Text(
                                products[index].productName,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 4,
                                right: 4,
                              ),
                              child: ConstrainedBox(
                                constraints: BoxConstraints.tight(
                                  const Size(162, 32),
                                ),
                                child: Text(
                                  products[index].productDescription,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                products[index].price,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                products[index].discountPrice,
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              height: 84,
              width: 343,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: MyColors.primarywhite,
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/special_offer.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Special Offers   😱',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ConstrainedBox(
                          constraints:
                              BoxConstraints.tight(const Size(171, 32)),
                          child: const Text(
                            'We make sure you get the offer you need at best prices',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                // const Text(
                //   'Flat and Heels',
                //   style: TextStyle(
                //     fontSize: 16,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
                // const Text('Stand a chance to get rewarded'),
                Image.asset('assets/images/mac.png'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Stack(
                children: [
                  Container(
                    height: 60,
                    width: 343,
                    decoration: const BoxDecoration(
                      color: MyColors.pink,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 8,
                    left: 8,
                    child: Text(
                      'Treanding Products',
                      style: TextStyle(
                        color: MyColors.primarywhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 8,
                    top: 36,
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_month_rounded,
                          color: MyColors.primarywhite,
                          size: 16,
                        ),
                        Text(
                          '  Last Date 19/10/23 ',
                          style: TextStyle(
                            color: MyColors.primarywhite,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 215,
                    right: 12,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          width: 1,
                          color: MyColors.primarywhite,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        fixedSize: const Size(89, 32),
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            'View All',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: MyColors.primarywhite),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 16,
                            color: MyColors.primarywhite,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    product.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: MyColors.primarywhite,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.asset(
                                product[index].image,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: ConstrainedBox(
                                constraints: BoxConstraints.tight(
                                  const Size(134, 48),
                                ),
                                child: Text(
                                  product[index].productName,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                products[index].price,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                products[index].discountPrice,
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 343,
              height: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: MyColors.primarywhite,
              ),
              child: Stack(
                children: [
                  Image.asset('assets/images/hot summer sell.png'),
                  const Positioned(
                    top: 208,
                    left: 8,
                    child: Text(
                      'New Arrivals',
                      style: TextStyle(
                        // color: MyColors.primarywhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 8,
                    top: 234,
                    child: Text(
                      'Summer’ 25 Collections',
                      style: TextStyle(
                        // color: MyColors.primarywhite,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 12,
                    bottom: 16,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: MyColors.pink,
                        side: const BorderSide(
                          color: MyColors.pink,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        fixedSize: const Size(116, 28),
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'View All',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: MyColors.primarywhite,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 16,
                            color: MyColors.primarywhite,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}

//DOt Circle
class CircleR extends StatelessWidget {
  const CircleR({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: ClipOval(
        child: Container(
          color: Colors.grey,
          height: 12,
          width: 12,
        ),
      ),
    );
  }
}
