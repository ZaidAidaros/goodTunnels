import 'package:flutter/material.dart';

class TextFFieldWidget extends StatelessWidget {
  const TextFFieldWidget({super.key, this.textEditingController, this.prefixIcon, this.label, this.hint});
  final TextEditingController? textEditingController;
  final IconData? prefixIcon;
  final String? label;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(prefixIcon),
          hintText: hint,
          labelStyle:TextStyle(color: Colors.blue,fontSize: 20) ,
          labelText:label ,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(width: 10, color: Colors.red))),
    );
  }
}
