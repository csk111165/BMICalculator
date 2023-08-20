import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  
  final IconData icon;
  final String label;

  IconContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      // align the icon and text to center
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
        // taking the user defined icon value
        icon,
        size: 80,
        ),
        // this is to give space between icon and the text
        SizedBox(
          height: 15.0,
        ),
        Text(
          // taking user defined text value
          label,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8d8E98),
          ),
        ),
      ],
    );
  }
}