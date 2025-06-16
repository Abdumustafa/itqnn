import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itqan/core/helper/spaces.dart';
import 'package:itqan/core/theming/styles.dart';
import 'package:itqan/feature/onboarding/logic/onboarding_cubit.dart';

class BuildPageView extends StatelessWidget {
  const BuildPageView({
    super.key,
    required this.controller,
    required this.pages,
  });

  final PageController controller;
  final List<Map<String, String>> pages;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<OnboardingCubit, int>(
        builder: (context, state) {
          return PageView.builder(
            controller: controller,
            itemCount: pages.length,
            onPageChanged: (index) {
              context.read<OnboardingCubit>().updateIndex(index);
            },
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    pages[index]['image']!,
                    height: 350.h,
                  ),
                  verticalSpace(20),
                  Text(
                    pages[index]['title']!,
                    style: TextStyles.font24DarkBlueBoldCairo,
                  ),
                  verticalSpace(10),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Text(pages[index]['subtitle']!,
                        textAlign: TextAlign.center,
                        style: TextStyles.font16BlueGraymediumCairo),
                  ),
                  verticalSpace(30),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
