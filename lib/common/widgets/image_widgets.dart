import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appImage({
  String imagePath = "",
  double width = 16,
  double hight = 16,
}) {
  return Image.network(
    imagePath.isEmpty
        ? "https://i.ibb.co/j4By2Cv/Untitled-design-3.png"
        : imagePath,
    width: width.w,
    height: hight.h,
  );
}
