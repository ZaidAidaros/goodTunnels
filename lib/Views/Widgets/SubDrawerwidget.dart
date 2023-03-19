import 'package:flutter/material.dart';
import 'package:goodtunnels/Core/Constants/TitlesConstTexts.dart';
import 'package:goodtunnels/Views/Widgets/ListTileSubDrawer.dart';

class SubDrawerWidget extends StatelessWidget {
  const SubDrawerWidget({Key? key}) : super(key: key);

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
                Navigator.of(context).pushReplacementNamed("homepage");
              },
            ),
            ListTitleSubDrawer(
              title: "${TitlesConstText.NewCommintement}",
              icon: Icon(Icons.add),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("newcommitment");
              },
            ),
            ListTitleSubDrawer(
              title: "${TitlesConstText.Commintements}",
              icon: Icon(Icons.bookmark_outline),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("elemntcommitment");
              },
            ),
            ListTitleSubDrawer(
              title: "${TitlesConstText.Setteings}",
              icon: Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("settings");
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
