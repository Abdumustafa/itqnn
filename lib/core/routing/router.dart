import 'package:get/get.dart';
import 'package:itqan/core/localization/translation/translation_screen.dart';
import 'package:itqan/feature/login_screen/ui/screen/login_screen.dart';
import 'package:itqan/feature/onboarding/ui/screen/onboarding_screen.dart';
import 'package:itqan/feature/sign_in/data/user_type.dart';
import 'package:itqan/feature/sign_in/ui/sign_in.dart';

import '../../feature/home_screen/ui/screen/home_screen.dart';

class AppRouter {
  static String initialRoute = '/onboarding';

  static List<GetPage> routes = [
    GetPage(name: '/TranslationScreen', page: () => TranslationScreen()),
    GetPage(name: '/onboarding', page: () => OnBoardingScreen()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/SignupScreen', page: () => RegisterScreen()),
    GetPage(
        name: '/HomeScreen',
        page: () => HomeScreen(
              user: UserModel(name: "Abdu", type: UserType.company),
            )),
  ];
}
