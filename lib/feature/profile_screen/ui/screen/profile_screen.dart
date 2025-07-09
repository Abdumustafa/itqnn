import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:itqan/feature/profile_screen/ui/widget/info_field.dart';
import 'package:itqan/feature/profile_screen/ui/widget/video_card.dart';

class EmployeeProfileScreen extends StatelessWidget {
  const EmployeeProfileScreen({super.key});

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
        title: const Text('الملف الشخصي'),
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

              /// داخل الـ Column الرئيسي
              const Text("الفيديوهات",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              SizedBox(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    VideoCard(
                      imagePath: 'assets/images/icon_app/Group 9.png',
                      title: 'كيفية إدارة الوقت في العمل',
                      author: 'م/ محمود علي',
                    ),
                    VideoCard(
                      imagePath: 'assets/images/icon_app/Group 9.png',
                      title: 'مقدمة في تحسين محركات البحث',
                      author: 'م/ روان محمد',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),
              const Text("التقارير و الوظائف",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Table(
                border: TableBorder.all(color: Colors.grey),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: const {
                  0: FixedColumnWidth(40),
                  1: FlexColumnWidth(),
                  2: FlexColumnWidth(),
                  3: FlexColumnWidth(),
                  4: FlexColumnWidth(),
                },
                children: const [
                  TableRow(
                    decoration: BoxDecoration(color: Color(0xfffbd38b)),
                    children: [
                      Center(child: Text('#')),
                      Center(child: Text('عنوان الوظيفة')),
                      Center(child: Text('الفيديو المطلوب إنهائه')),
                      Center(child: Text('اسم المدير')),
                      Center(child: Text('الحالة')),
                    ],
                  ),
                  TableRow(children: [
                    Center(child: Text('1')),
                    Center(child: Text('تقرير عن إدارة الوقت')),
                    Center(child: Text('كيفية إدارة الوقت في العمل')),
                    Center(child: Text('م/ محمود علي')),
                    Center(
                        child: Text('تم الرفع',
                            style: TextStyle(color: Colors.green))),
                  ]),
                  TableRow(children: [
                    Center(child: Text('2')),
                    Center(child: Text('كتابة مقال SEO')),
                    Center(child: Text('تحسين محركات البحث')),
                    Center(child: Text('م/ ريم سمير')),
                    Center(
                        child: Text('قيد المراجعة',
                            style: TextStyle(color: Colors.orange))),
                  ]),
                  TableRow(children: [
                    Center(child: Text('3')),
                    Center(child: Text('إنشاء تقرير شهري')),
                    Center(child: Text('مراجعة الأداء الشهري')),
                    Center(child: Text('م/ سامي عماد')),
                    Center(
                        child: Text('لم يبدأ بعد',
                            style: TextStyle(color: Colors.red))),
                  ]),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
