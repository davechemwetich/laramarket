import 'package:flutter/material.dart';
import 'package:laramarket/common/widgets/text_widgets.dart';
import 'package:laramarket/pages/auth/widgets/sigin_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppbar(),
            body: Column(
              children: [
                //top loin buttons
                thirdPartyLogin(),
                text14Normal(text: "Or use email account to login"),
                appTextField(),
              ],
            )),
      ),
    );
  }
}
