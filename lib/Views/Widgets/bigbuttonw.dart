import 'package:flutter/material.dart';

class BigButtonWidget extends StatelessWidget {
  const BigButtonWidget({super.key, required this.title, required this.onTap});
  final String title;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(top: 30),
        width: 200,
        height: 60,
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, fontFamily: "Cairo"),
        ),
      ),
    );
  }
}
