import 'package:flutter/material.dart';
//import 'package:gatorblocks_rbt/main.dart';

class AppDrawer extends Drawer {
  AppDrawer({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(""),
              accountEmail: Text("Arcanus"),
            ),
            Divider(),
/*             ListTile(
              title: Text("Settings"),
              trailing: Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Settings("Settings")));
              },
            ), */
          ],
        ),
      );
}
