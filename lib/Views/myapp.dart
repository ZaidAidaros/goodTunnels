import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodtunnels/Controllers/SharedControllers/logincontroller.dart';
import 'package:goodtunnels/Views/Screens/DeCenterazionSc/newcommitsc.dart';

import '../Core/Constants/Pages/getpages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color.fromARGB(255, 62, 82, 146),
        fontFamily: "Cairo",
      ),
      //initialBinding: ,
      // initialRoute: AppPages.logIn,
      // getPages: AppPages.getPages,
      home: NewCommitSc(),
    );
  }
}
