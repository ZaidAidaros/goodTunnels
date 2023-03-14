import 'package:flutter/material.dart';

class ListTitleSubDrawer extends StatelessWidget {
  const ListTitleSubDrawer({Key? key, this.title, this.onTap, this.icon})
      : super(key: key);
  final title;
  final icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        shape: Border(bottom: BorderSide(color: Colors.blue)),
        trailing: icon,
        iconColor: Colors.blue,
        title: Text(
          "${title}",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
          textAlign: TextAlign.end,
        ),
        onTap: onTap);
  }
}
