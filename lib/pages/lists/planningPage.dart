import 'package:flutter/material.dart';
import 'package:arcanus/widgets/lists/planningList.dart';

class Planning extends StatelessWidget {
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
