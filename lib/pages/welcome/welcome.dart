// ignore_for_file: must_be_immutable

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laramarket/common/widgets/widgets.dart';
import 'package:laramarket/pages/welcome/notifier/welcome_notifier.dart';

class Karibu extends ConsumerWidget {
  Karibu({Key? key, required this.context}) : super(key: key);

  final PageController _controller = PageController();
  final BuildContext context;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);
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
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                  controller: _controller,

                  scrollDirection: Axis.horizontal,
                  children: [
                    //First Page
                    onboardingPage(
                      _controller,
                      imagePath:
                          "https://telegra.ph/file/175788198de01479e2da0.png",
                      title: "FBI Are After Me",
                      subTitle:
                          "Just make it happen by lerning this course with laravel backend",
                      index: 1,
                      context: context,
                    ),
                    //Second Page
                    onboardingPage(
                      _controller,
                      imagePath:
                          "https://telegra.ph/file/78ec4abddc8da06bafaaf.png",
                      title: "Hello World",
                      subTitle:
                          "Just make it happen by lerning this course with laravel backend",
                      index: 2,
                      context: context,
                    ),
                    //Third Page
                    onboardingPage(
                      _controller,
                      imagePath:
                          "https://telegra.ph/file/02e4e8d089145f8975150.png",
                      title: "Hack It",
                      subTitle:
                          "Just make it happen by lerning this course with laravel backend",
                      index: 3,
                      context: context,
                    ),
                  ],
                ),
                Positioned(
                    bottom: 50,
                    child: DotsIndicator(
                      dotsCount: 3,
                      position: index,
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
