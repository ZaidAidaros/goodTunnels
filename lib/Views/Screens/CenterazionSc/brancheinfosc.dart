import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:goodtunnels/Views/Widgets/BranchBoxElementWidget.dart';

import '../../../Core/Constants/Pages/getpages.dart';
import '../../../Core/Constants/TitlesConstTexts.dart';
import '../../Widgets/BoxHomPage.dart';
import '../../Widgets/MainDrawerwidget.dart';

class BrancheInfoSc extends StatelessWidget {
  const BrancheInfoSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "${TitlesConstText.DetailsBranch}",
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
            Column(
              children: [
                Container(
                  child: BranchBoxElement(
                    BanchName: "Basel",
                    PhoneNumber: "773216193",
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "${TitlesConstText.Commintements}",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
