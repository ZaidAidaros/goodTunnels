import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:goodtunnels/Core/Constants/Pages/getpages.dart';
import 'package:goodtunnels/Core/Constants/TitlesConstTexts.dart';
import 'package:goodtunnels/Views/Widgets/MainDrawerwidget.dart';
import 'package:goodtunnels/Views/Widgets/SubDrawerwidget.dart';
import 'package:goodtunnels/Views/Widgets/commitwidget.dart';

class CommitmentsSc extends StatelessWidget {
  const CommitmentsSc({super.key});

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
                "${TitlesConstText.ComingCommintement} ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          backgroundColor: Color.fromARGB(255, 201, 199, 199),
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          elevation: 10,
        ),
        drawer: MainDrawerWidget(),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, i) {
              return CommitmentWidget(
                commiReqNo: 577568856587,
                reqAdminUint: "Basel dkjhs",
                authEntity: "dssgsgsgsgfsd",
                authOfficer: "skdndskn",
                submitDate: "2023/20/11",
                forDuration: "1Q",
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(AppPages.commitmentInfo);
                },
              );
            }),
      ),
    );
  }
}
