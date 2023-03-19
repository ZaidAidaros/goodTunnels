import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:goodtunnels/Core/Constants/TitlesConstTexts.dart';
import 'package:goodtunnels/Core/Constants/commitconsttexts.dart';
import 'package:goodtunnels/Views/Widgets/MainDrawerwidget.dart';
import 'package:goodtunnels/Views/Widgets/BoxFormFoledbranch.dart';
import 'package:goodtunnels/Views/Widgets/bigbuttonw.dart';

import '../../Widgets/textfield.dart';

class NewBrancheSc extends StatelessWidget {
  const NewBrancheSc({super.key});

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
                "${TitlesConstText.AddBranch}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              )),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          elevation: 0,
        ),
        drawer: MainDrawerWidget(),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              Container(
                  child: Container(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BoxFormFiledBranches(
                      title: "${TitlesConstText.OrgName}:",
                      hintText: " ادخل${TitlesConstText.OrgName}   ",
                    ),
                    BoxFormFiledBranches(
                      title: "${TitlesConstText.PhoneName}:",
                      hintText: "ادخل${TitlesConstText.PhoneName}",
                    ),
                    BoxFormFiledBranches(
                      title: "${TitlesConstText.Username}",
                      hintText: " ادخل ${TitlesConstText.Username}",
                    ),
                    BoxFormFiledBranches(
                      title: "${TitlesConstText.Password}:",
                      hintText: " ادخل ${TitlesConstText.Password}",
                    ),
                    Row(
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
                                color: Color.fromARGB(255, 64, 112, 151),
                                width: 2),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: InkWell(
                            onTap: (() {
                              Navigator.of(context).pushReplacementNamed("");
                            }),
                            child: Text(
                              " ${TitlesConstText.Cancel} ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(vertical: 20),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                color: Color.fromARGB(255, 64, 112, 151),
                                width: 2),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: InkWell(
                            onTap: (() {
                              Navigator.of(context).pushReplacementNamed("");
                            }),
                            child: Text(
                              " ${TitlesConstText.Save}",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
