import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laramarket/common/utils/app_colors.dart';
import 'package:laramarket/common/widgets/text_widgets.dart';

// prefered sized gives a hight or space  from AppBar  downwards and we can put child in a given space
//
AppBar buildAppbar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.black,
        height: 1,
      ),
    ),
    title: text16Normal(text: "Log in", color: AppColors.primaryText),
    centerTitle: true,
  );
}

Widget thirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(left: 80.w, right: 80.w, top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton("https://i.ibb.co/K9htzCL/Untitled-design.png"),
        _loginButton("https://i.ibb.co/whZRqs4/Untitled-design-1.png"),
        _loginButton("https://i.ibb.co/k9F2ZZ6/Untitled-design-2.png"),
      ],
    ),
  );
}

Widget _loginButton(String imagePath) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40.w,
      height: 40.h,
      child: Image.network(imagePath),
    ),
  );
}

Widget appTextField() {
  return Container(
    child: Column(
      children: [],
    ),
  );
}
