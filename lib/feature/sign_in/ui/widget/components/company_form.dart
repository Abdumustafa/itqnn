// import 'package:flutter/material.dart';
// import 'package:itqan/feature/sign_in/ui/widget/components/common_widgets.dart';

// class CompanyForm extends StatelessWidget {
//   const CompanyForm({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: const [
//         CustomTextField(label: 'اسم الشركة'),
//         CustomTextField(label: 'رقم السجل التجاري'),
//         CustomTextField(label: 'البريد الالكتروني'),
//         CustomTextField(label: 'الصناعة'),
//         CustomTextField(label: 'الموقع'),
//         CustomTextField(label: 'رقم الهاتف'),
//         CustomTextField(label: 'كلمة المرور', obscure: true),
//         SizedBox(height: 20),
//         SubmitButton(),
//         SizedBox(height: 20),
//       ],
//     );
//   }
// }
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itqan/core/diodio/auth_service.dart.dart';
import 'common_widgets.dart';

class CompanyForm extends StatelessWidget {
  CompanyForm({super.key});

  final nameController = TextEditingController();
  final commercialRegController = TextEditingController();
  final emailController = TextEditingController();
  final industryController = TextEditingController();
  final locationController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  void submitCompany() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar("خطأ", "من فضلك أدخل كل البيانات");
      return;
    }

    try {
      await AuthService().registerCompany({
        "name": nameController.text,
        "commercial_register": commercialRegController.text,
        "email": emailController.text,
        "industry": industryController.text,
        "location": locationController.text,
        "phone": phoneController.text,
        "password": passwordController.text,
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
        CustomTextField(label: 'اسم الشركة', controller: nameController),
        CustomTextField(
            label: 'رقم السجل التجاري', controller: commercialRegController),
        CustomTextField(label: 'البريد الالكتروني', controller: emailController),
        CustomTextField(label: 'الصناعة', controller: industryController),
        CustomTextField(label: 'الموقع', controller: locationController),
        CustomTextField(label: 'رقم الهاتف', controller: phoneController),
        CustomTextField(
            label: 'كلمة المرور',
            obscure: true,
            controller: passwordController),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: submitCompany,
          child: const Text("إنشاء حساب"),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
