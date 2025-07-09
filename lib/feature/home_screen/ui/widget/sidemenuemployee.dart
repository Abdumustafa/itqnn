import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itqan/feature/profile_screen/ui/screen/profile_screen.dart';
import 'package:itqan/feature/subscription_screen/ui/screen/subscription_screen.dart';

class SideMenuEmployee extends StatelessWidget {
  const SideMenuEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage:
                    AssetImage("assets/images/icon_app/Group 9.png"),
              ),
              SizedBox(width: 10),
              Text(
                "اسم الموظف",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          )),
          ListTile(
            title: Text("الملف الشخصي"),
            onTap: () {
              Get.to(() => EmployeeProfileScreen());
            },
          ),
          ListTile(title: Text("الكورسات")),
          ListTile(title: Text("التقارير")),
          ListTile(title: Text("الإعدادات")),
          ListTile(title: Text("شهادتي")),
        ],
      ),
    );
  }
}
