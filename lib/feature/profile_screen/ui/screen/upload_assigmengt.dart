import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:itqan/feature/profile_screen/ui/widget/info_field.dart';
import 'package:itqan/feature/profile_screen/ui/widget/up_photo.dart';

class UploadAssigmengt extends StatelessWidget {
  const UploadAssigmengt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              child: Text(
                "الاعدادات",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/icon_app/🦆 icon _list_.svg',
                width: 24,
                height: 24,
              ),
              title: const Text('التقيمات '),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/icon_app/🦆 icon _folder open_.svg',
                width: 24,
                height: 24,
              ),
              title: const Text("رفع التقارير "),
              onTap: () {
                Get.toNamed('/UploadAssigmengt');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/icon_app/Group.svg',
                width: 24,
                height: 24,
              ),
              title: const Text("الإختبارات "),
              onTap: () {
                Get.toNamed('/QuizScreen');
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/icon_app/🦆 icon _degree hat_.svg',
                width: 24,
                height: 24,
              ),
              title: const Text("الشهادات "),
              onTap: () {
                Get.toNamed('/CertificateScreen');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: const Text('رفع الوظيفة'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Builder(
                      builder: (context) => const CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/images/icon_app/person.jpg'),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "روان محمد ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "SEO Specialist",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: const [
                    Column(
                      children: const [
                        InfoField(title: 'اسم المستخدم', value: 'روان محمد'),
                        InfoField(title: 'رقم الهاتف', value: '01030500805'),
                        InfoField(
                            title: 'البريد الالكتروني',
                            value: 'ٌٌRawan@gmail.com'),
                        InfoField(
                            title: 'القسم التابع له',
                            value: 'التسويق الالكتروني'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              UploadPdfSection(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
