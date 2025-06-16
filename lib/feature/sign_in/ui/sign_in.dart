import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itqan/feature/sign_in/ui/widget/components/company_form.dart';
import 'package:itqan/feature/sign_in/ui/widget/components/employee_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isCompany = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            SizedBox(
                width: double.infinity,
                child: Image.asset('assets/images/login/Sign up-cuate 1.png',
                    height: 250)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildOptionButton(
                    title: "شركة",
                    selected: isCompany,
                    onTap: () {
                      setState(() => isCompany = true);
                    }),
                buildOptionButton(
                    title: "موظف",
                    selected: !isCompany,
                    onTap: () {
                      setState(() => isCompany = false);
                    }),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: isCompany ? const CompanyForm() : const EmployeeForm(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildOptionButton({
    required String title,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Icon(
                title == "شركة" ? Icons.business : Icons.person,
                size: 40,
                color: selected ? Colors.blue : Colors.grey,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: selected ? Colors.blue : Colors.grey,
                ),
              ),
              if (selected)
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  height: 2,
                  width: 60,
                  color: Colors.blue,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
