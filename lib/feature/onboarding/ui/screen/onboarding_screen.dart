import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:itqan/feature/onboarding/ui/widget/dete_animated.dart';
import 'package:itqan/feature/onboarding/ui/widget/onboarding_text_button.dart';
import 'package:itqan/feature/onboarding/logic/onboarding_cubit.dart';
import 'package:itqan/feature/onboarding/ui/widget/build_pageview.dart';
import 'package:itqan/feature/onboarding/ui/widget/skip_button.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final List<Map<String, String>> pages = [
    {
      'image': 'assets/images/onboarding/onboarding1.png',
      'title': 'onboarding1_title'.tr,
      'subtitle': 'onboarding1_subtitle'.tr,
    },
    {
      'image': 'assets/images/onboarding/onboarding2.png',
      'title': 'onboarding2_title'.tr,
      'subtitle': 'onboarding2_subtitle'.tr,
    },
    {
      'image': 'assets/images/onboarding/onboarding3.png',
      'title': 'onboarding3_title'.tr,
      'subtitle': 'onboarding3_subtitle'.tr,
    }
  ];

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(top: 50.h, bottom: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0.w),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SkipButton(),
                ),
              ),
              BuildPageView(controller: controller, pages: pages),
              DoteAnimatedContainer(pages: pages),
              OnboardingTextButton(
                pages: pages,
                controller: controller,
                buttonText: "next".tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
