import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:anilist/anilist.dart';

class Blocks extends StatefulWidget {
  final String value1;

  Blocks({Key key, this.value1}) : super(key: key);

  @override
  _BlocksState createState() => _BlocksState();
}

class _BlocksState extends State<Blocks> {
  hexColour(String colourHexCode) {
    String colourNew = '0xff' + colourHexCode;
    colourNew = colourNew.replaceAll('#', '');
    int colourInt = int.parse(colourNew);
    return colourInt;
  }

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        height: 500,
        decoration: BoxDecoration(
          //color: Color(hexColour('#EDEDED')),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Card(
                child: ListTile(
              title: Text("ANIME NAME"),
              subtitle: Text("Episodes Watched: 0/24"),
            )),
          ],
        ));
  }
}
