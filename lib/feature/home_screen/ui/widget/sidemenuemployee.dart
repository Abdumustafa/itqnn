import 'package:flutter/material.dart';

class SideMenuEmployee extends StatelessWidget {
  const SideMenuEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(child: Text("موظف")),
          ListTile(title: Text("الملف الشخصي")),
          ListTile(title: Text("الكورسات")),
          ListTile(title: Text("التقارير")),
          ListTile(title: Text("الإعدادات")),
          ListTile(title: Text("شهادتي")),
        ],
      ),
    );
  }
}
