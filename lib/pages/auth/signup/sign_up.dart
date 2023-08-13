// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laramarket/common/widgets/app_bar.dart';
import 'package:laramarket/common/widgets/app_textfields.dart';
import 'package:laramarket/common/widgets/button_widgets.dart';
import 'package:laramarket/common/widgets/text_widgets.dart';
import 'package:laramarket/pages/auth/signup/notifier/register_notifier.dart';

class SignUp extends ConsumerWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(registerNotifierProvider);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppbar(title: "Sign Up"),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  text14Normal(text: "Free SignUp & Enter Your Details Below "),
                  SizedBox(
                    height: 20.h,
                  ),
                  //Email text Box
                  appTextField(
                      text: "UserName",
                      iconName:
                          "https://i.ibb.co/j4By2Cv/Untitled-design-3.png",
                      hintText: "Enter Your UserName",
                      func: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .onUserNameChange(value)),
                  SizedBox(
                    height: 30.h,
                  ),
                  //Email text Box
                  appTextField(
                    text: "Email",
                    iconName: "https://i.ibb.co/j4By2Cv/Untitled-design-3.png",
                    hintText: "Enter Your Email",
                    func: (value) => ref
                        .read(registerNotifierProvider.notifier)
                        .onUserEmailChange(value),
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
                  appTextField(
                    text: "Confirm Your Password",
                    iconName: "https://i.ibb.co/47Jdx3G/Untitled-design-4.png",
                    hintText: "Confirm Your Password",
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
                    child: text14Normal(
                        text:
                            "By Creating An Account you are Agreeing with our terms and condition !"),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                  //Register Button
                  appButton(
                    buttonName: "Sign Up",
                    isLogin: true,
                    context: context,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
