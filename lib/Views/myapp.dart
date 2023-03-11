import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodtunnels/Controllers/SharedControllers/logincontroller.dart';

import '../Core/Constants/Pages/getpages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //initialBinding: ,
      initialRoute: AppPages.logIn,
      getPages: AppPages.getPages,
    );
  }
}
