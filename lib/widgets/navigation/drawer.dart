import 'package:flutter/material.dart';
// Page imports
import 'package:arcanus/pages/searchScreen.dart';

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
            //Divider(),
            ListTile(
              title: Text("Search"),
              trailing: Icon(Icons.search),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Search()));
              },
            ),
            ListTile(
              title: Text("Anime"),
              trailing: Icon(Icons.movie),
              onTap: () {},
            ),
            ListTile(
              title: Text("Manga"),
              trailing: Icon(Icons.book),
              onTap: () {},
            ),
            ListTile(
              title: Text("Settings"),
              trailing: Icon(Icons.settings),
              onTap: () {
/*                 Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Settings("Settings")));
               */
              },
            ),
          ],
        ),
      );
}
