import 'package:flutter/material.dart';
import 'package:itqan/feature/sign_in/ui/widget/components/common_widgets.dart';

class EmployeeForm extends StatelessWidget {
  const EmployeeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomTextField(label: 'الاسم'),
        CustomTextField(label: 'اسم الشركة'),
        CustomTextField(label: 'البريد الالكتروني'),
        CustomTextField(label: 'كلمة المرور', obscure: true),
        CustomTextField(label: 'الوظيفة'),
        CustomTextField(label: 'رقم الهاتف'),
        SizedBox(height: 20),
        SubmitButton(),
        
        SizedBox(height: 20),     ],
    );
  }
}
