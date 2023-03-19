import 'package:flutter/material.dart';
import 'package:goodtunnels/Core/Constants/commitconsttexts.dart';
import 'package:goodtunnels/Views/Widgets/elmentcontent.dart';

class CommitmentWidget extends StatelessWidget {
  const CommitmentWidget({
    Key? key,
    this.onTap,
    this.commiReqNo,
    this.reqAdminUint,
    this.authEntity,
    this.authOfficer,
    this.submitDate,
    this.forDuration,
  }) : super(key: key);

  final commiReqNo;
  final reqAdminUint;
  final authEntity;
  final authOfficer;
  final submitDate;
  final forDuration;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 450,
          width: 400,
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElementContent(
                title: CommitConstTexts.commitReqNo,
                value: commiReqNo,
              ),
              ElementContent(
                title: CommitConstTexts.commitAutUint,
                value: reqAdminUint,
              ),
              ElementContent(
                title: CommitConstTexts.commitAuthEntity,
                value: authEntity,
              ),
              ElementContent(
                title: CommitConstTexts.commitAuthOfficer,
                value: authOfficer,
              ),
              ElementContent(
                title: CommitConstTexts.commitSubmitDate,
                value: submitDate,
              ),
              ElementContent(
                isRow: false,
                title: CommitConstTexts.commitForDuration,
                value: forDuration,
              ),
            ],
          )),
    );
  }
}
