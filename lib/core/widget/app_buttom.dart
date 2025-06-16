import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:itqan/core/theming/colors.dart';
import 'package:itqan/core/theming/styles.dart';

class AppButtom extends StatelessWidget {
  const AppButtom(
      {super.key, required this.onPressed, required this.buttonText});
  final Function() onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.Amber,
          minimumSize: Size(double.infinity, 50.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText.tr,
          style: TextStyles.font18DarkBlueboldCairo,
        ),
      ),
    );
  }
}
