import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laramarket/common/widgets/app_shadow.dart';
import 'package:laramarket/common/widgets/image_widgets.dart';
import 'package:laramarket/common/widgets/text_widgets.dart';

Widget appTextField({
  String text = "",
  String iconName = "",
  String hintText = "Type In Your Info",
  bool obscureText = false,
  void Function(String value)? func,
}) {
  return Container(
    padding: EdgeInsets.only(
      left: 25.w,
      right: 25.w,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        SizedBox(
          height: 5.h,
        ),
        Container(
          width: 325.w,
          height: 50.h,
          decoration: appBoxDecorationTextField(),
          child: Row(
            //Row contains icons and text fieds
            children: [
              Container(
                margin: EdgeInsets.only(left: 17.w),
                child: appImage(imagePath: iconName),
              ),
              //text field ares
              SizedBox(
                width: 275.w,
                height: 50.h,
                child: TextField(
                  onChanged: (value) => func!(value),
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),

                  maxLines: 1,
                  autocorrect: false,
                  //BY default is false
                  obscureText: obscureText,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
