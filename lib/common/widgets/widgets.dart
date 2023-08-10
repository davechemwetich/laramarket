import 'package:flutter/material.dart';
import 'package:laramarket/common/widgets/app_shadow.dart';
import 'package:laramarket/common/widgets/text_widgets.dart';

Widget onboardingPage(
  PageController controller, {
  String imagePath = "",
  String title = "",
  String subTitle = "",
  index = 0,
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
      _nextButton(index, controller)
    ],
  );
}

Widget _nextButton(int index, PageController controller) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceInOut,
        );
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(
        top: 100,
        left: 25,
        right: 25,
      ),
      decoration: appBoxShadow(),
      child: Center(child: text16Normal(text: "Next")),
    ),
  );
}
