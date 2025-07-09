import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> sections = [
      {
        'title': 'الصحة و السلامة المهنية',
        'quizzes': [
          {'name': 'الاختبار الأول', 'status': 'مكتمل'},
          {'name': 'الاختبار الثاني', 'status': 'مكتمل'},
          {'name': 'الاختبار الثالث', 'status': 'ابدأ الاختبار'},
          {'name': 'الاختبار الرابع', 'status': 'ابدأ الاختبار'},
        ],
      },
      {
        'title': 'تنمية تكنولوجيا المعلومات',
        'quizzes': [
          {'name': 'الاختبار الأول', 'status': 'مكتمل'},
          {'name': 'الاختبار الثاني', 'status': 'مكتمل'},
          {'name': 'الاختبار الثالث', 'status': 'ابدأ الاختبار'},
          {'name': 'الاختبار الرابع', 'status': 'ابدأ الاختبار'},
        ],
      },
      {
        'title': 'الصحة و السلامة المهنية',
        'quizzes': [
          {'name': 'الاختبار الأول', 'status': 'مكتمل'},
          {'name': 'الاختبار الثاني', 'status': 'مكتمل'},
          {'name': 'الاختبار الثالث', 'status': 'ابدأ الاختبار'},
          {'name': 'الاختبار الرابع', 'status': 'ابدأ الاختبار'},
        ],
      },
    ];

    return Scaffold(
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
        title: const Text("الاختبارات", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: sections.length,
          itemBuilder: (context, sectionIndex) {
            final section = sections[sectionIndex];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${sectionIndex + 1}- ${section['title']}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                ...List.generate(4, (quizIndex) {
                  final quiz = section['quizzes'][quizIndex];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(quiz['name']),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: quiz['status'] == 'مكتمل'
                                ? Colors.green
                                : Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            quiz['status'],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        // const Spacer(),
                      ],
                    ),
                  );
                }),
                const SizedBox(height: 24),
              ],
            );
          },
        ),
      ),
    );
  }
}
