import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ewallet/utils/theme.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset('assets/img_onboarding1.png', height: 331),
                Image.asset('assets/img_onboarding2.png', height: 331),
                Image.asset('assets/img_onboarding3.png', height: 331),
              ],
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    'Grow Your\nFinancial Today',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    'Our system is helping you to\nachieve a better goal',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: blueColor,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lightBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lightBackgroundColor,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 150,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            carouselController.nextPage();
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(56),
                            ),
                          ),
                          child: Text(
                            'Continue',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
