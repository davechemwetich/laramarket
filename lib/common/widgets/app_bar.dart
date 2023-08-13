import 'package:flutter/material.dart';
import 'package:laramarket/common/utils/app_colors.dart';
import 'package:laramarket/common/widgets/text_widgets.dart';

AppBar buildAppbar({String title = ""}) {
  return AppBar(
    elevation: 0,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.transparent,
        height: 1,
      ),
    ),
    title: text16Normal(text: title, color: AppColors.primaryText),
    centerTitle: true,
  );
}
