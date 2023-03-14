import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodtunnels/Controllers/CenterControllers/cenhomecontroller.dart';
import 'package:goodtunnels/Core/Constants/Pages/getpages.dart';
import 'package:goodtunnels/Core/Constants/TitlesConstTexts.dart';
import 'package:goodtunnels/Views/Widgets/MainDrawerwidget.dart';

class CenterHomeSc extends GetView<CenHomeController> {
  const CenterHomeSc({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CenHomeController());
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 62, 82, 146),
        appBar: AppBar(
          title: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Text(
                "${TitlesConstText.Home}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              )),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          elevation: 0,
        ),
        drawer: MainDrawerWidget(),
        body: ListView(
          children: [
            Container(
              // width: double.infinity,
              // height: double.infinity,
              child: Container(
                padding:
                    EdgeInsets.only(bottom: 80, top: 80, right: 5, left: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: 300,
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          margin: const EdgeInsets.symmetric(vertical: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            iconColor: Colors.blue,
                            title: const Text(
                              "${TitlesConstText.ComingCommintement}",
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            onTap: () => controller.goToIncomingReq(),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: 300,
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          margin: const EdgeInsets.symmetric(vertical: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            iconColor: Colors.blue,
                            title: const Text(
                              "  الفروع",
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed(AppPages.branches);
                              print("object");
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 300,
                          padding: const EdgeInsets.symmetric(vertical: 50),
                          margin: const EdgeInsets.symmetric(vertical: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            iconColor: Colors.blue,
                            title: const Text(
                              "  الاعدادت",
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("MainSettings");
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
