import 'package:flutter/material.dart';
import 'package:goodtunnels/Core/Constants/Pages/getpages.dart';
import 'package:goodtunnels/Core/Constants/TitlesConstTexts.dart';
import 'package:goodtunnels/Views/Widgets/MainDrawerwidget.dart';

import '../../Widgets/comingrquestbox.dart';

class CommitInfoSc extends StatelessWidget {
  const CommitInfoSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterTop,
          floatingActionButton: Container(
              margin: EdgeInsets.only(top: 180),
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(234, 34, 34, 34),
                borderRadius: BorderRadius.circular(0),
              ),
              height: 180,
              width: double.infinity,
              child: FittedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Commitment Request Number:",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          " 878686 ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Requesting Administrative Unit:",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          " Aden ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Authorizing entity:",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          " Aden ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Authorizing Officer:",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          " Aden ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Submission Date:",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          " 2023/2/12 ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "For Year/Quarter/Month:",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          " 2023/2/12 ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          appBar: AppBar(
            title: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "${TitlesConstText.DetailsCommintent}",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            toolbarHeight: 70,
            elevation: 0,
          ),
          drawer: MainDrawerWidget(),
          body: ListView.builder(
              itemCount: 11,
              itemBuilder: (context, i) {
                if (i == 0) {
                  return SizedBox(
                    height: 180,
                  );
                } else {
                  return ComingRquestWidget(
                    Chpter: "one",
                    Part: "tow",
                    Type: "dlmlfmf",
                    Item: "flfl",
                    Cotineues: "no",
                    Date: "2033/20/22",
                    Aomuant: "3902026",
                    BlanceAfterApporved: "lmfcmnsdmenkdebjdbd",
                    Descrption: "momndonmfonmdofnwomdom",
                    onAccept: (() {
                      Navigator.of(context).pushReplacementNamed("");
                    }),
                    onReject: (() {
                      Navigator.of(context).pushReplacementNamed("");
                    }),
                  );
                }
              }),
        ));
  }
}
