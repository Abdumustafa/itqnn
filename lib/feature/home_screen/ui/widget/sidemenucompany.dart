import 'package:flutter/material.dart';

class SideMenuCompany extends StatelessWidget {
  const SideMenuCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(child: Text("شركة")),
          ListTile(title: Text("لوحة التحكم")),
          ListTile(title: Text("طلبات الموظفين")),
          ListTile(title: Text("المدربين")),
          ListTile(title: Text("الموظفين")),
          ListTile(title: Text("شهادة رقمية")),
          ListTile(title: Text("👑 الترقية")),
        ],
      ),
    );
  }
}
