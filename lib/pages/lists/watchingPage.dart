import 'package:flutter/material.dart';
import 'package:arcanus/widgets/lists/watchingList.dart';

class Watching extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Blocks(),
          ],
        ),
      ),
    );
  }
}
