import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:goodtunnels/Controllers/CenterControllers/incommingreqcontroller.dart';

class InCommingReqSc extends GetView<InCommingReqScController> {
  const InCommingReqSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(itemBuilder:(context, index) {
          
        },)
      ),
    );
  }
}