import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// prefered sized gives a hight or space  from AppBar  downwards and we can put child in a given space

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
