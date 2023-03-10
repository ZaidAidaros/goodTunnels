import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Core/Constants/Pages/getpages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.loginPage,
      getPages: AppPages.getPages,
    );
  }
}