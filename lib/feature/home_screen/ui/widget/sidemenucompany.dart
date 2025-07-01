import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itqan/feature/subscription_screen/ui/screen/subscription_screen.dart';

class SideMenuCompany extends StatelessWidget {
  const SideMenuCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(child: Text("شركة")),
          const ListTile(title: Text("لوحة التحكم")),
          const ListTile(title: Text("طلبات الموظفين")),
          const ListTile(title: Text("المدربين")),
          const ListTile(title: Text("الموظفين")),
          const ListTile(title: Text("شهادة رقمية")),
          ListTile(
            title: const Text("👑 الترقية"),
            onTap: () {
              Get.back();
              Get.to(() => SubscriptionScreen());
            },
          ),
        ],
      ),
    );
  }
}
