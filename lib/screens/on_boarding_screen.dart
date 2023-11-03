import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';
import 'package:my_ecommerce/screens/login_screen.dart';
import 'package:my_ecommerce/screens/page_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  int count = 1;
  int count3 = 3;

  onChange(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: currentPage == onBoardingList.length - 3
                  ? const Text('')
                  : Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          count--;
                          _pageController.previousPage(
                            duration: const Duration(microseconds: 150),
                            curve: Curves.linear,
                          );
                        },
                        child: const Text(
                          'Prev',
                          style: TextStyle(
                            color: MyColors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
            ),
            Expanded(
              child: Row(
                children: List.generate(
                  onBoardingList.length,
                  (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 150),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: 8,
                      width: (index == currentPage) ? 40 : 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            (index == currentPage) ? Colors.black : Colors.grey,
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: currentPage == onBoardingList.length - 1
                  ? Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BottomAppbarScreen(),
                              ));
                        },
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            color: MyColors.pink,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  : Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          count++;
                          _pageController.nextPage(
                            duration: const Duration(microseconds: 150),
                            curve: Curves.linear,
                          );
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: MyColors.pink,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
      body: PageView.builder(
        onPageChanged: onChange,
        scrollDirection: Axis.horizontal,
        itemCount: onBoardingList.length,
        controller: _pageController,
        itemBuilder: (context, index) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 17,
                right: 17,
                top: 45,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '$count',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        const TextSpan(
                          text: '/',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: MyColors.fontgrey,
                          ),
                        ),
                        TextSpan(
                          text: '$count3',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: MyColors.fontgrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 110),
            Center(child: Image.asset(onBoardingList[index].image)),
            const SizedBox(height: 10),
            Text(
              onBoardingList[index].title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(
                  const Size(340, 72),
                ),
                child: Text(
                  onBoardingList[index].subTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: MyColors.fontgrey,
                    letterSpacing: 0.24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
