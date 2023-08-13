import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laramarket/common/widgets/app_bar.dart';
import 'package:laramarket/common/widgets/app_textfields.dart';
import 'package:laramarket/common/widgets/button_widgets.dart';
import 'package:laramarket/common/widgets/text_widgets.dart';
import 'package:laramarket/pages/auth/signin/widgets/sigin_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppbar(title: "Log In"),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  //top loin buttons
                  thirdPartyLogin(),
                  text14Normal(text: "Or use email account to login"),
                  SizedBox(
                    height: 50.h,
                  ),
                  //Email text Box
                  appTextField(
                    text: "Email",
                    iconName: "https://i.ibb.co/j4By2Cv/Untitled-design-3.png",
                    hintText: "Enter Your Email",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  //password text Box
                  appTextField(
                    text: "Password",
                    iconName: "https://i.ibb.co/47Jdx3G/Untitled-design-4.png",
                    hintText: "Enter Your Password",
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  //Forgot Password
                  Container(
                    margin: EdgeInsets.only(
                      left: 15.w,
                    ),
                    child: textUndeLine(text: "Forgot Password !!"),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  //Login Button
                  appButton(buttonName: "Log In"),
                  SizedBox(
                    height: 10.h,
                  ),
                  //Register Button
                  appButton(
                    buttonName: "Sign Up",
                    isLogin: false,
                    context: context,
                    func: () => Navigator.pushNamed(context, "/register"),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
