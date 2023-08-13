import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laramarket/pages/auth/signin/sign_in.dart';
import 'package:laramarket/pages/auth/signup/sign_up.dart';
import 'package:laramarket/pages/welcome/welcome.dart';
import 'package:laramarket/theme/app_styles.dart';

void main() {
  runApp(
    const ProviderScope(
      child: Techli(),
    ),
  );
}

class Techli extends StatelessWidget {
  const Techli({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Techli Market',
          // You can use the library anywhere in the app even in theme
          theme: AppTheme.appThemeData,
          initialRoute: "/",
          routes: {
            "/": (context) => Karibu(context: context),
            "/signin": (context) => const SignIn(),
            "/register": (context) => const SignUp(),
          },
        );
      },
    );
  }
}
