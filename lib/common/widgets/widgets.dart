import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laramarket/common/widgets/app_shadow.dart';
import 'package:laramarket/common/widgets/text_widgets.dart';

Widget onboardingPage(
  PageController controller, {
  String imagePath = "",
  String title = "",
  String subTitle = "",
  index = 0,
  BuildContext? context,
}) {
  return Column(
    children: [
      Image.network(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Container(
        margin: const EdgeInsets.only(top: 25),
        child: text24Normal(
          text: title,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: text16Normal(
          text: subTitle,
        ),
      ),
      _nextButton(context!, index, controller)
    ],
  );
}

Widget _nextButton(BuildContext context, int index, PageController controller) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceInOut,
        );
      } else {
        Navigator.pushNamed(
          context,
          "/signin",
        );
      }
    },
    child: Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(
        top: 100.h,
        left: 25.w,
        right: 25.w,
      ),
      decoration: appBoxShadow(),
      child: Center(
          child: text16Normal(
              text: index < 3 ? "Next" : "Get Started", color: Colors.white)),
    ),
  );
}
