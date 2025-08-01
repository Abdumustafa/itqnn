// import 'package:flutter/material.dart';
// import 'package:itqan/feature/sign_in/ui/widget/components/common_widgets.dart';

// class EmployeeForm extends StatelessWidget {
//   const EmployeeForm({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: const [
//         CustomTextField(label: 'الاسم'),
//         CustomTextField(label: 'اسم الشركة'),
//         CustomTextField(label: 'البريد الالكتروني'),
//         CustomTextField(label: 'كلمة المرور', obscure: true),
//         CustomTextField(label: 'الوظيفة'),
//         CustomTextField(label: 'رقم الهاتف'),
//         SizedBox(height: 20),
//         SubmitButton(),
        
//         SizedBox(height: 20),     ],
//     );
//   }
// }
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itqan/core/diodio/auth_service.dart.dart';
import 'common_widgets.dart';

class EmployeeForm extends StatelessWidget {
  EmployeeForm({super.key});

  final nameController = TextEditingController();
  final companyController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final jobController = TextEditingController();
  final phoneController = TextEditingController();

  void submitEmployee() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar("خطأ", "من فضلك أدخل كل البيانات");
      return;
    }

    try {
      await AuthService().registerEmployee({
        "name": nameController.text,
        "company": companyController.text,
        "email": emailController.text,
        "password": passwordController.text,
        "job": jobController.text,
        "phone": phoneController.text,
      });

      Get.offAllNamed('/HomeScreen');
      Get.snackbar("نجاح", "تم إنشاء الحساب بنجاح");
    } catch (e) {
      final errorMsg = (e is DioException)
          ? e.response?.data['message'] ?? 'حدث خطأ'
          : 'فشل التسجيل';
      Get.snackbar("خطأ", errorMsg);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(label: 'الاسم', controller: nameController),
        CustomTextField(label: 'اسم الشركة', controller: companyController),
        CustomTextField(label: 'البريد الالكتروني', controller: emailController),
        CustomTextField(
            label: 'كلمة المرور',
            obscure: true,
            controller: passwordController),
        CustomTextField(label: 'الوظيفة', controller: jobController),
        CustomTextField(label: 'رقم الهاتف', controller: phoneController),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: submitEmployee,
          child: const Text("إنشاء حساب"),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
