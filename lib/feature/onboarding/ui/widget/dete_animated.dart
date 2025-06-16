import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itqan/feature/onboarding/logic/onboarding_cubit.dart';

class DoteAnimatedContainer extends StatelessWidget {
  const DoteAnimatedContainer({
    super.key,
    required this.pages,
  });

  final List<Map<String, String>> pages;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pages.length,
        (i) => BlocBuilder<OnboardingCubit, int>(
          builder: (context, state) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              width: state == i ? 30.w : 10.w,
              height: 8.h,
              decoration: BoxDecoration(
                color:
                    state == i ? const Color(0xFF0D3B66) : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10.r),
              ),
            );
          },
        ),
      ),
    );
  }
}
