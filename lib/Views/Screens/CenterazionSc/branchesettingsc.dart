import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../Core/Constants/TitlesConstTexts.dart';
import '../../Widgets/MainDrawerwidget.dart';

class BrancheSettingSc extends StatelessWidget {
  const BrancheSettingSc({super.key});

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
                "${TitlesConstText.Setteings}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          elevation: 0,
        ),
        drawer: MainDrawerWidget(),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Text("data")),
      ),
    );
  }
}
