import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:itqan/core/localization/translation/change_lang.dart';
import 'package:itqan/core/localization/translation/translation.dart';
import 'package:itqan/core/routing/router.dart';
import 'package:itqan/core/theming/colors.dart';

class ItqanApp extends StatelessWidget {
  ItqanApp({super.key});
  final LocaleController controller = Get.put(LocaleController());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: GetMaterialApp(
        getPages: AppRouter.routes,
        initialRoute: AppRouter.initialRoute,
        title: "ItqanApp",
        theme: ThemeData(
          primaryColor: ColorsManager.Amber,
              fontFamily: "Cairo",

        ),
        debugShowCheckedModeBanner: false,
        locale: controller.language,
        translations: MyTranslation(),
      ),
    );
  }
}
