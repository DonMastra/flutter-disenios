import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_today_outlined,
            size: 30.0,
          ),
          label: 'Calendario',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.pie_chart_outline,
            size: 30.0,
          ),
          label: 'Gráficos',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.supervised_user_circle_outlined,
            size: 30.0,
          ),
          label: 'Usuarios',
        ),
      ],
    );
  }
}
