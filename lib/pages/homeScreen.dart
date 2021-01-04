import 'package:flutter/material.dart';
// Widget imports
import 'package:arcanus/widgets/navigation/drawer.dart';
// Page imports
import 'package:arcanus/pages/lists/watchingPage.dart';
import 'package:arcanus/pages/lists/planningPage.dart';
import 'package:arcanus/pages/lists/completedPage.dart';
import 'package:arcanus/pages/lists/pausedPage.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Logic for bottom navigation bar
  int selectedIndex = 0;
  List<Widget> bottomNavOptions = <Widget>[
    Watching(),
    Planning(),
    Completed(),
    Paused(),
  ];

  void onOptionPress(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // Top of the homepage
          'Arcanus',
          textAlign: TextAlign.start,
        ),
        elevation: 0.0,
      ),
      drawer: AppDrawer(),
      body: Center(
        child: bottomNavOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff00C7FF),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: 'Watching',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_play),
            label: 'Planning',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done_all),
            label: 'Completed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pause),
            label: 'Paused',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onOptionPress,
      ),
    );
  }
}
