import 'package:flutter/material.dart';

class BoxHomePage extends StatelessWidget {
  const BoxHomePage({Key? key, this.title, this.onTap}) : super(key: key);
  final title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 120,
          width: 300,
          padding: EdgeInsets.symmetric(vertical: 25),
          margin: EdgeInsets.symmetric(vertical: 25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            iconColor: Colors.blue,
            title: Text(
              "${title}",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            onTap: onTap,
          ),
        ),
      ],
    );
  }
}
