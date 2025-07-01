import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SubscriptionScreen extends StatelessWidget {
  SubscriptionScreen({super.key});

  final PageController _controller = PageController();

  final List<Map<String, dynamic>> plans = [
    {
      "title": "الباقة المجانية",
      "subtitle": "للشركات الصغيرة",
      "price": "اشتراك شهري من 50 إلى 100 دولار للشركة",
      "features": [
        "عدد محدود من المستخدمين (مثلاً عشرة موظفين).",
        "مساحة تخزين صغيرة (مثلاً 5 جيجابايت).",
        "الوصول لعدد محدود من المميزات.",
      ],
      "buttonText": "اشترك الآن مجاناً",
    },
    {
      "title": "الباقة الأساسية",
      "subtitle": "موجهة للشركات الصغيرة",
      "price": "اشتراك شهري من 300 إلى 500 دولار للشركة",
      "features": [
        "عدد محدود من المستخدمين (مثلاً خمسين موظفاً).",
        "مساحة تخزين متوسطة (مثلاً 20 جيجابايت).",
        "رفع المحتوى ومتابعة المحتوى الأساسي.",
      ],
      "buttonText": "اشترك الآن",
    },
    {
      "title": "الباقة المتقدمة",
      "subtitle": "للشركات المتوسطة و الكبيرة",
      "price": "اشتراك شهري من 700 إلى 1200 دولار للشركة",
      "features": [
        "دعم فني علي مدار اليوم.",
        "عدد أكبر من المستخدمين (حتى 500 موظف).",
        "مساحة تخزين كبيرة (50 إلى 100 جيجابايت).",
        "تقارير مفصلة عن تقدم الموظفين.",
      ],
      "buttonText": "اشترك الآن",
    },
    {
      "title": "الباقة المخصصة",
      "subtitle": "للشركات الكبيرة",
      "price": "اشتراك شهري يبدأ من 1000 دولار حسب احتياجات الشركة",
      "features": [
        "عدد غير محدود من المستخدمين.",
        "مساحة تخزين غير محدودة.",
        "تخصيص كامل للمنصة (إضافة شعار الشركة، وظائف خاصة).",
        "دعم مدرب فردي لكل شركة.",
      ],
      "buttonText": "اشترك الآن",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: PageView.builder(
              controller: _controller,
              itemCount: plans.length,
              itemBuilder: (context, index) {
                final plan = plans[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 210, 235, 247),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(plan["title"],
                              style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff013b55))),
                          const SizedBox(height: 20),
                          Text("اختيار المنصة، عدد محدود من المستخدمين",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black54)),
                          Text(plan["subtitle"],
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xff013b55),
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(height: 50),
                          Text(plan["price"],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 12)),
                            child: Text(plan["buttonText"],
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                          const SizedBox(height: 80),
                          ...plan["features"].map<Widget>((feature) => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(Icons.thumb_up_alt_outlined,
                                      size: 18, color: Colors.black87),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      feature,
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ],
                              )),
                          const SizedBox(height: 60),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: const CircleAvatar(
                backgroundColor: Colors.black12,
                child: Icon(Icons.close, color: Colors.black),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: plans.length,
                effect: const WormEffect(
                  dotColor: Colors.grey,
                  activeDotColor: Colors.orange,
                  dotHeight: 15,
                  dotWidth: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
