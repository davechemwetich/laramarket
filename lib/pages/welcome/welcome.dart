import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laramarket/common/widgets/widgets.dart';

class Karibu extends StatefulWidget {
  const Karibu({super.key});

  @override
  State<Karibu> createState() => _KaribuState();
}

class _KaribuState extends State<Karibu> {
  final PageController _pageController = PageController();
  int dotsIndex = 0;

  @override
  Widget build(BuildContext context) {
    print("my index value is $dotsIndex");
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: EdgeInsets.only(top: 30.h),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                //showing 3 dots indicator
                PageView(
                  //for showing dots indicator
                  onPageChanged: (value) {
                    print("my index value is $value");
                    setState(() {
                      dotsIndex = value;
                    });
                  },
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    //First Page
                    onboardingPage(
                      _pageController,
                      imagePath:
                          "https://telegra.ph/file/175788198de01479e2da0.png",
                      title: "FBI Are After Me",
                      subTitle:
                          "Just make it happen by lerning this course with laravel backend",
                      index: 1,
                    ),
                    //Second Page
                    onboardingPage(
                      _pageController,
                      imagePath:
                          "https://telegra.ph/file/734761203202f55f48e15.png",
                      title: "Love Is A Beautifull Thing",
                      subTitle:
                          "Just make it happen by lerning this course with laravel backend",
                      index: 2,
                    ),
                    //Third Page
                    onboardingPage(
                      _pageController,
                      imagePath:
                          "https://telegra.ph/file/02e4e8d089145f8975150.png",
                      title: "Hack It",
                      subTitle:
                          "Just make it happen by lerning this course with laravel backend",
                      index: 3,
                    ),
                  ],
                ),
                Positioned(
                    bottom: 50,
                    child: DotsIndicator(
                      dotsCount: 3,
                      decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
