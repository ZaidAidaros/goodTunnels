import 'package:flutter/material.dart';
import 'package:goodtunnels/Core/Constants/TitlesConstTexts.dart';
import 'package:goodtunnels/Core/Constants/requestconsttexts.dart';
import 'package:goodtunnels/Views/Widgets/comingrquestcontent.dart';

class ComingRquestWidget extends StatelessWidget {
  const ComingRquestWidget(
      {Key? key,
      this.Chpter,
      this.Part,
      this.Type,
      this.Item,
      this.Cotineues,
      this.Date,
      this.Aomuant,
      this.BlanceAfterApporved,
      this.Descrption,
      this.onAccept,
      this.onReject})
      : super(key: key);
  final Chpter;
  final Part;
  final Type;
  final Item;
  final Cotineues;
  final Date;
  final Aomuant;
  final BlanceAfterApporved;
  final Descrption;
  final void Function()? onAccept;
  final void Function()? onReject;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // ComeingComeingReuestcontentelment
          ComeingReuestcontentelment(
            isRow: false,
            isCloum: false,
            title: RquestConstText.Aomuant,
            value: Aomuant,
          ),
          ComeingReuestcontentelment(
            isRow: false,
            isCloum: false,
            title: RquestConstText.BlanceAfterApporved,
            value: BlanceAfterApporved,
          ),
          ComeingReuestcontentelment(
            isRow: true,
            LifTtitle: RquestConstText.Chpter,
            LeftValue: Chpter,
            RightTitle: RquestConstText.Part,
            RightValue: Part,
          ),
          ComeingReuestcontentelment(
            isRow: true,
            LifTtitle: RquestConstText.Type,
            LeftValue: Type,
            RightTitle: RquestConstText.Item,
            RightValue: Item,
          ),
          ComeingReuestcontentelment(
            isRow: false,
            isCloum: true,
            title: RquestConstText.Contineues,
            value: Cotineues,
          ),
          ComeingReuestcontentelment(
            isRow: false,
            isCloum: true,
            title: RquestConstText.Date,
            value: Date,
          ),

          ComeingReuestcontentelment(
            isRow: false,
            isCloum: false,
            title: RquestConstText.Descrption,
            value: Descrption,
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
                  onTap: onReject,
                  child: Text(
                    "${TitlesConstText.Reject}",
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
                  onTap: onAccept,
                  child: Text(
                    "${TitlesConstText.Accpted}",
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
      ),
    );
  }
}
// (() {
//                     Navigator.of(context).pushReplacementNamed("");
//                   })