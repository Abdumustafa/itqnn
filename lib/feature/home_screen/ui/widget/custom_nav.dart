import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  const CustomBottomNavBar({
    super.key,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      color: Colors.white,
      elevation: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTabItem(icon: Icons.home, label: "الرئيسية", index: 0),
          _buildTabItem(icon: Icons.miscellaneous_services, label: "الخدمات", index: 1),
          const SizedBox(width: 40), // مكان الـ FAB
          _buildTabItem(icon: Icons.info_outline, label: "حول التطبيق", index: 2),
          _buildTabItem(icon: Icons.phone, label: "اتصل بنا", index: 3),
        ],
      ),
    );
  }

  Widget _buildTabItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: isSelected ? Colors.blue : Colors.grey),
            Text(label, style: TextStyle(color: isSelected ? Colors.blue : Colors.grey, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
