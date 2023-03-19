import 'package:flutter/material.dart';

class Reuestcontentelment extends StatelessWidget {
  const Reuestcontentelment(
      {Key? key,
      this.isRow = false,
      this.isCloum = false,
      this.LifTtitle,
      this.RightTitle,
      this.LeftValue,
      this.RightValue,
      this.title,
      this.value})
      : super(key: key);
  final title;
  final LifTtitle;

  final RightTitle;
  final value;
  final LeftValue;
  final RightValue;
  final bool isRow;
  final bool isCloum;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: isRow
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 80, left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          Text(
                            "${LifTtitle}",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${LeftValue}",
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Text(
                            "${RightTitle}",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${RightValue}",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Container(
                  child: isCloum
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 100, left: 20),
                              child: Text(
                                "${title}:",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                "${value}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      : Container(
                          width: 260,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "${title}",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                child: Text(
                                  "${value}",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        )),
        ),
      ),
    );
  }
}
