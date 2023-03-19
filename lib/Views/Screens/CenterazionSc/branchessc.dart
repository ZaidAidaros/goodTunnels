import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodtunnels/Controllers/CenterControllers/branchescontroller.dart';
import 'package:goodtunnels/Core/Constants/Pages/getpages.dart';
import 'package:goodtunnels/Core/Constants/TitlesConstTexts.dart';
import 'package:goodtunnels/Views/Widgets/BranchBoxElementWidget.dart';
import 'package:goodtunnels/Views/Widgets/MainDrawerwidget.dart';

class BranchesSc extends GetView<BranchesScController> {
  const BranchesSc({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BranchesScController());
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(210, 34, 34, 34),
                borderRadius: BorderRadius.circular(0),
              ),
              height: 90,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromARGB(255, 64, 112, 151), width: 2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: InkWell(
                      onTap: (() {
                        Navigator.of(context)
                            .pushReplacementNamed(AppPages.newBranche);
                      }),
                      child: Text(
                        " ${TitlesConstText.Add}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )),
          appBar: AppBar(
            title: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "${TitlesConstText.Branches}",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            toolbarHeight: 70,
            elevation: 0,
          ),
          drawer: MainDrawerWidget(),
          body: ListView.builder(
              itemCount: controller.orgList.length,
              itemBuilder: (context, i) {
                return BranchBoxElement(
                  BanchName: controller.orgList[i].name,
                  PhoneNumber: controller.orgList[i].phone,
                  onTap: () {
                    controller.goToBranchinfo(controller.orgList[i]);
                  },
                );
              })),
    );
  }
}


// BranchBoxElement(
//                     username: " dkdkdkkd ",
//                     PhoneNumber: "78688",
//                   ),