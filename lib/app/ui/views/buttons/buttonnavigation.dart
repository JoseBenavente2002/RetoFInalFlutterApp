import 'package:flutter/material.dart';

class BtnPrimary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "null"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.cases_rounded,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "null"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.view_agenda,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "null"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: "null"),
      ],
    );
  }
}
