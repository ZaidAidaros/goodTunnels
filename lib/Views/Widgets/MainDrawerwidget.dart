import 'package:flutter/material.dart';
import 'package:goodtunnels/Core/Constants/Pages/getpages.dart';
import 'package:goodtunnels/Views/Widgets/ListTileSubDrawer.dart';

import '../../Core/Constants/TitlesConstTexts.dart';

class MainDrawerWidget extends StatelessWidget {
  const MainDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(225, 255, 255, 255),
      child: ListView(
        children: [
          Column(children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 136, 160, 226),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                accountName: Text("${TitlesConstText.Username}"),
                accountEmail: Text("${TitlesConstText.Email}")),
            ListTitleSubDrawer(
              title: "${TitlesConstText.Home}",
              icon: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(AppPages.cenHome);
              },
            ),
            ListTitleSubDrawer(
              title: "${TitlesConstText.ComingCommintement}",
              icon: Icon(Icons.add),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(AppPages.incommingReq);
              },
            ),
            ListTitleSubDrawer(
              title: "${TitlesConstText.Branches}",
              icon: Icon(Icons.bookmark_outline),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(AppPages.branches);
              },
            ),
            ListTitleSubDrawer(
              title: "${TitlesConstText.Setteings}",
              icon: Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(AppPages.settings);
              },
            ),
            ListTitleSubDrawer(
              title: "${TitlesConstText.Logout}",
              icon: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("load");
              },
            ),
          ]),
        ],
      ),
    );
  }
}
