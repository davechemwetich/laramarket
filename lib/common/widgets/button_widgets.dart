import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laramarket/common/utils/app_colors.dart';
import 'package:laramarket/common/widgets/app_shadow.dart';
import 'package:laramarket/common/widgets/text_widgets.dart';

Widget appButton(
    {String buttonName = "",
    double width = 325,
    double height = 50,
    bool isLogin = true,
    BuildContext? context,
    void Function()? func}) {
  return GestureDetector(
    onTap: func,
    child: Container(
      width: width.w,
      height: height.h,
      decoration: appBoxShadow(
          color: isLogin ? AppColors.primaryElement : Colors.white),
      child: Center(
        child: text16Normal(
            text: buttonName,
            color:
                isLogin ? AppColors.primaryBackground : AppColors.primaryText),
      ),
    ),
  );
}
