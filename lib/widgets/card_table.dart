import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.shopping_bag_rounded,
              text: 'Shopping',
            ),
            _SingleCard(
              color: Colors.greenAccent,
              icon: Icons.cloud,
              text: 'Bills',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.purple,
              icon: Icons.pages,
              text: 'Documents',
            ),
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.graphic_eq_outlined,
              text: 'Trading',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blueGrey,
              icon: Icons.hardware_outlined,
              text: 'Mining',
            ),
            _SingleCard(
              color: Colors.lightGreen,
              icon: Icons.code,
              text: 'Programming',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Focus on internal card widgets
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(
              this.icon,
              size: 35.0,
              color: Colors.white,
            ),
            radius: 30.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            this.text,
            style: TextStyle(
              color: this.color,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

// Creates blur effect
class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
