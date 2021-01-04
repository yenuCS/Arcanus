import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search for anime!"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          TextField(
            controller: searchController,
            decoration: InputDecoration(prefixIcon: Icon(Icons.search)),
          )
        ],
      )),
    );
  }
}
