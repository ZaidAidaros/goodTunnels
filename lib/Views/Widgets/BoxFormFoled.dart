import 'package:flutter/material.dart';

class BoxFormFiledRequest extends StatelessWidget {
  const BoxFormFiledRequest({Key? key, this.title, this.hintText})
      : super(key: key);
  final title;
  final hintText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 140,
          width: 330,
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "${title}",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "${hintText} ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 10, color: Colors.red))),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
