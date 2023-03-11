import 'package:flutter/material.dart';
import 'package:goodtunnels/Views/Widgets/textfield.dart';

class LogInputWidget extends StatelessWidget {
  const LogInputWidget(
      {super.key, this.useNameTEController, this.usePasswordTEController});
  final TextEditingController? useNameTEController;
  final TextEditingController? usePasswordTEController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFFieldWidget(
          textEditingController: useNameTEController,
          label: " اسم المستخدم",
          hint: " اسم المستخدم",
        ),
        const SizedBox(
          height: 20,
        ),
        TextFFieldWidget(
          textEditingController: usePasswordTEController,
          label: "كلمة المرور",
          hint: "كلمة المرور",
        ),
      ],
    );
  }
}
