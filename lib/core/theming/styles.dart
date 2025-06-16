import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itqan/core/theming/colors.dart';
import 'package:itqan/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font24BlackBoldCairo = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
      );
  static TextStyle font24DarkBlueBoldCairo = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.DarkBlue,
      );
  static TextStyle font16BlueGraymediumCairo = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.BlueGray,
      );
  static TextStyle font10DarkBlueboldCairo = TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.DarkBlue,
      );
  static TextStyle font18DarkBlueboldCairo = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.DarkBlue,
      );
  static TextStyle font14DarkBlueboldCairo = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.DarkBlue,
     );
  static TextStyle font14DarkBluemediumCairo = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.DarkBlue,
      );
}
