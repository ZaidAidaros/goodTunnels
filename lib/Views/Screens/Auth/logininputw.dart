import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:goodtunnels/Views/Widgets/textfield.dart';

class LogInputWidget extends StatelessWidget {
  const LogInputWidget({super.key, this.useNameTEController, this.usePasswordTEController});
  final TextEditingController? useNameTEController;
  final TextEditingController? usePasswordTEController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          " اسم المستخدم",
          style: TextStyle(
              fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFFieldWidget(
          textEditingController:  useNameTEController,
          label: " اسم المستخدم",
          hint: " اسم المستخدم",
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "كلمة المرور",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
       const SizedBox(
          height: 5,
        ),
        TextFFieldWidget(
          textEditingController: usePasswordTEController,
          label: "كلمة المرور",
          hint: "كلمة المرور",
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
