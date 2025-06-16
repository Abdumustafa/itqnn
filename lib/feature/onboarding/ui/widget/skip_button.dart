import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:itqan/core/theming/styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Color(0xfff0f0f0),
      ),
      child: TextButton(
        onPressed: () {
          Get.offNamed('/login');
        },
        child: Text(
          "skip".tr,
          style: TextStyles.font10DarkBlueboldCairo,
        ),
      ),
    );
  }
}
