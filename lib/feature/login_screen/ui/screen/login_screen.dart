import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:itqan/core/helper/spaces.dart';
import 'package:itqan/core/widget/app_buttom.dart';
import 'package:itqan/feature/login_screen/ui/widget/app_text_field.dart';
import 'package:itqan/feature/login_screen/ui/widget/forget_password.dart';
import 'package:itqan/feature/login_screen/ui/widget/login_image_fac.dart';
import 'package:itqan/feature/login_screen/ui/widget/or_and_divider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscured = true;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginImageFac(),
            AppTextField(
              textEditingController: emailController,
              labelText: 'email',
            ),
            verticalSpace(25.h),
            AppTextField(
              textEditingController: passwordController,
              labelText: 'password',
              suffixIcon: IconButton(
                icon:
                    Icon(isObscured ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    isObscured = !isObscured;
                  });
                },
              ),
            ),
            ForgetPssword(),
            AppButtom(
              onPressed: () {},
              buttonText: "login",
            ),
            OrAndDivider(),
            AppButtom(
              onPressed: () {
                Get.toNamed('/SignupScreen');
              },
              buttonText: "sign_up",
            ),
          ],
        ),
      ),
    );
  }
}
