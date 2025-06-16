import 'package:flutter/material.dart';
import 'package:itqan/feature/sign_in/ui/widget/components/common_widgets.dart';

class CompanyForm extends StatelessWidget {
  const CompanyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomTextField(label: 'اسم الشركة'),
        CustomTextField(label: 'رقم السجل التجاري'),
        CustomTextField(label: 'البريد الالكتروني'),
        CustomTextField(label: 'الصناعة'),
        CustomTextField(label: 'الموقع'),
        CustomTextField(label: 'رقم الهاتف'),
        CustomTextField(label: 'كلمة المرور', obscure: true),
        SizedBox(height: 20),
        SubmitButton(),
        SizedBox(height: 20),
      ],
    );
  }
}
