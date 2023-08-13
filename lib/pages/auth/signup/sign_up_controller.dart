// ignore_for_file: unused_local_variable, avoid_print

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:laramarket/common/widgets/popup_msg.dart';
import 'package:laramarket/pages/auth/signup/notifier/register_notifier.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});
  void handleSignUp() {
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    if (state.password != state.rePassword) {
      toastInfo("Your Password Did Not March");
      print("your password does not match");
    }
  }
}
