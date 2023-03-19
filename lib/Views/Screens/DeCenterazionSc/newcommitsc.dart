import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:goodtunnels/Core/Constants/TitlesConstTexts.dart';
import 'package:goodtunnels/Core/Constants/commitconsttexts.dart';
import 'package:goodtunnels/Views/Widgets/BoxFormFoled.dart';
import 'package:goodtunnels/Views/Widgets/SubDrawerwidget.dart';

var Found = "one";
List Item = ["one", "tow", "three", "four"];

class NewCommitSc extends StatelessWidget {
  const NewCommitSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 62, 82, 146),
        appBar: AppBar(
          title: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "${TitlesConstText.NewCommintement}",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
              )),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          elevation: 0,
        ),
        drawer: SubDrawerWidget(),
        body: ListView(
          children: [
            Container(
                child: Container(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BoxFormFiledRequest(
                    title: "${CommitConstTexts.commitAutUint}",
                    hintText: " Enter RAU .. ",
                  ),
                  BoxFormFiledRequest(
                    title: "${CommitConstTexts.commitAuthOfficer}",
                    hintText: " Enter Auth Officer .. ",
                  ),
                  BoxFormFiledRequest(
                    title: "${CommitConstTexts.commitAuthEntity}",
                    hintText: " Enter Auth Enttity .. ",
                  ),
                  BoxFormFiledRequest(
                    title: "${CommitConstTexts.commitForDuration}",
                    hintText: " Enter Date .. ",
                  ),
                  BoxFormFiledRequest(
                    title: "${CommitConstTexts.comitFound}",
                    hintText: " Enter Found .. ",
                  ),
                  BoxFormFiledRequest(
                    title: "${CommitConstTexts.comitProject}",
                    hintText: " Enter Project .. ",
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     InkWell(
                  //       onTap: (() {
                  //         Navigator.of(context)
                  //             .pushReplacementNamed("homepage");
                  //       }),
                  //       child: Container(
                  //         alignment: Alignment.center,
                  //         margin: EdgeInsets.symmetric(vertical: 40),
                  //         height: 50,
                  //         width: 200,
                  //         decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           borderRadius: BorderRadius.circular(9),
                  //         ),
                  //         child: Text(
                  //           "${TitlesConstText.Add}",
                  //           style: TextStyle(
                  //               fontSize: 30, fontWeight: FontWeight.bold),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
