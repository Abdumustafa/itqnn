import 'package:flutter/material.dart';
import 'package:itqan/feature/home_screen/ui/widget/custom_nav.dart';
import 'package:itqan/feature/home_screen/ui/widget/search.dart';
import 'package:itqan/feature/home_screen/ui/widget/sidemenucompany.dart';
import 'package:itqan/feature/home_screen/ui/widget/sidemenuemployee.dart';
import 'package:itqan/feature/sign_in/data/user_type.dart';

class HomeScreen extends StatefulWidget {
  final UserModel user;

  const HomeScreen({super.key, required this.user});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController searchController = TextEditingController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: ClipOval(
          child: Image.asset(
            "assets/images/icon_app/Group 9.png",
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      drawer: widget.user.type == UserType.employee
          ? const SideMenuCompany()
          : const SideMenuEmployee(),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => _scaffoldKey.currentState?.openDrawer(),
                  child: const CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20,
                    child: Icon(Icons.person),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'أهلاً، ${widget.user.name}',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'عرض الملف الشخصي',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications, color: Colors.black),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            SearchBox(controller: searchController),
            Image.asset("assets/images/login/home.png"),
            Padding(
              padding: EdgeInsets.only(
                right: 16.0,
                left: 16.0,
                top: 16.0,
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    TextSpan(
                      text: "إتقان ",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.w900),
                    ),
                    TextSpan(
                      text:
                          "شريكك لتحقيق أعلى معايير الأداء والكفاءة نحو تطوير أكثر سهولة وكفاءة ويقدم لك الحلول المتكاملة لتدريب فريقك وتعزيز نجاحك.",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xff023047),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff023047),
                ),
                child: const Text(
                  "تصفح الآن",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "الخدمات التي نقدمها",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              color: const Color(0xff8ECAE6),
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 18),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  children: [
                    _buildServiceCard(
                        "إضافة المدربين", "assets/images/login/pp1.png"),
                    _buildServiceCard(
                        "إدارة الشركات", "assets/images/login/pp2.png"),
                    _buildServiceCard(
                        "رفع المحتوي التدريبي", "assets/images/login/pp3.png"),
                    _buildServiceCard(
                        "إدارة الموظفين", "assets/images/login/pp4.png"),
                    _buildServiceCard(
                        "تقارير الأداء", "assets/images/login/pp5.png"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCard(String title, String imagePath) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xff023047),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 50,
            height: 50,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
