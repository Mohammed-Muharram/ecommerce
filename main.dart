import 'package:ecommerce/bindings/intialbindings.dart';
import 'package:ecommerce/core/localization/changelocal.dart';
import 'package:ecommerce/core/localization/translation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/view/screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    LocaleController controller=Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',

      locale: controller.language,
      theme:controller.appTheme,
        initialBinding: IntialBindings(),

        getPages:routes,
      // home:const HomeScreen(),
      // home:Items(),
      //   routes:routes ,
    );
  }
}

