import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:goodtunnels/Controllers/CenterControllers/incommingreqcontroller.dart';
=======
import 'package:goodtunnels/Core/Constants/TitlesConstTexts.dart';
import 'package:goodtunnels/Views/Screens/SharedSc/commitmentssc.dart';
import 'package:goodtunnels/Views/Widgets/MainDrawerwidget.dart';
import 'package:goodtunnels/Views/Widgets/comingrquestbox.dart';
>>>>>>> 992ed7b9bcda913434e6a9c1c5899962f4c50461

class InCommingReqSc extends GetView<InCommingReqScController> {
  const InCommingReqSc({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      body: Container(
        child: ListView.builder(itemBuilder:(context, index) {
          
        },)
      ),
    );
=======
    return CommitmentsSc();
>>>>>>> 992ed7b9bcda913434e6a9c1c5899962f4c50461
  }
}
