import 'package:get/get.dart';
import 'package:itqan/core/localization/translation/translation_screen.dart';
import 'package:itqan/feature/login_screen/ui/screen/login_screen.dart';
import 'package:itqan/feature/onboarding/ui/screen/onboarding_screen.dart';
import 'package:itqan/feature/profile_screen/ui/screen/certificate_screen.dart';
import 'package:itqan/feature/profile_screen/ui/screen/profile_screen.dart';
import 'package:itqan/feature/profile_screen/ui/screen/quiiz_screen.dart';
import 'package:itqan/feature/profile_screen/ui/screen/upload_assigmengt.dart';
import 'package:itqan/feature/sign_in/data/user_type.dart';
import 'package:itqan/feature/sign_in/ui/sign_in.dart';
import 'package:itqan/feature/subscription_screen/ui/screen/subscription_screen.dart';

import '../../feature/home_screen/ui/screen/home_screen.dart';

class AppRouter {
  static String initialRoute = '/onboarding';

  static List<GetPage> routes = [
    GetPage(name: '/TranslationScreen', page: () => TranslationScreen()),
    GetPage(name: '/onboarding', page: () => OnBoardingScreen()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/SignupScreen', page: () => RegisterScreen()),
        GetPage(name: '/SubscriptionScreen', page: () => SubscriptionScreen()),
        GetPage(name: '/EmployeeProfileScreen', page: () => EmployeeProfileScreen()),
        GetPage(name: '/UploadAssigmengt', page: () => UploadAssigmengt()),
        GetPage(name: '/QuizScreen', page: () => QuizScreen()),
                GetPage(name: '/CertificateScreen', page: () => CertificateScreen()),


    GetPage(
        name: '/HomeScreen',
        page: () => HomeScreen(
              user: UserModel(name: "Abdu", type: UserType.company),
            )),
  ];
}
