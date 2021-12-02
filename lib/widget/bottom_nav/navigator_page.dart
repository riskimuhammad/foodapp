import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/core/data/moor_database.dart';
import 'package:foodapp/page/favorite/favorite.dart';
import 'package:foodapp/page/home/home_page.dart';
import 'package:foodapp/widget/color/color.dart';

class BottomNavigatorPage extends StatefulWidget {
  BottomNavigatorPage({Key key}) : super(key: key);

  @override
  _BottomNavigatorPageState createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  int _selectedIndex = 0;

  List<Widget> _widget = [
    HomePage(),
    FavirePage(),
    HomePage(),
    HomePage(),
  ];

  List<BottomNavigationBarItem> _navItem = [
    BottomNavigationBarItem(label: "Home", icon: FaIcon(FontAwesomeIcons.home)),
    BottomNavigationBarItem(
        label: "Favorite", icon: FaIcon(FontAwesomeIcons.heart)),
    BottomNavigationBarItem(
        label: "search", icon: FaIcon(FontAwesomeIcons.search)),
    BottomNavigationBarItem(
        label: "Profile", icon: FaIcon(FontAwesomeIcons.userAlt)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundWhite,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 20,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: pColor,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        items: _navItem,
      ),
    );
  }
}
