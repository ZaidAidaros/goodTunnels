import 'package:flutter/material.dart';
import 'package:goodtunnels/Core/Constants/TitlesConstTexts.dart';
import 'package:goodtunnels/Views/Widgets/rquestcontent.dart';

class BranchBoxElement extends StatelessWidget {
  const BranchBoxElement(
      {Key? key, this.BanchName, this.PhoneNumber, this.onTap})
      : super(key: key);
  final BanchName;
  final PhoneNumber;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: InkWell(
        onTap: onTap,
        child: FittedBox(
          child: Container(
            width: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              children: [
                Reuestcontentelment(
                  isRow: false,
                  isCloum: false,
                  title: TitlesConstText.Username,
                  value: BanchName,
                ),
                Reuestcontentelment(
                  isRow: false,
                  isCloum: false,
                  title: TitlesConstText.BranchName,
                  value: PhoneNumber,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
