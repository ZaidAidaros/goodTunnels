import 'package:flutter/material.dart';
import 'package:goodtunnels/Models/SharedModels/subcommitmentm.dart';

class SubCommitWidget extends StatelessWidget {
  const SubCommitWidget({super.key, required this.subCommitmentM});
  final SubCommitmentM subCommitmentM;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Chapter: ${subCommitmentM.authNo}",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 70),
                  child: Text(
                    "Part:",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Type:",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    "item:",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Contineues:",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Date",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Aomuant:",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "blance After apporved:",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Descrption:",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
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
                    color: Colors.red,
                    border: Border.all(
                        color: Color.fromARGB(255, 160, 15, 4), width: 1),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: InkWell(
                    onTap: (() {
                      Navigator.of(context).pushReplacementNamed("");
                    }),
                    child: Text(
                      "رفض",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                        color: Color.fromARGB(255, 7, 155, 12), width: 2),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: InkWell(
                    onTap: (() {
                      Navigator.of(context).pushReplacementNamed("");
                    }),
                    child: Text(
                      " تاكيد",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
