import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  
  final IconData icon;
  final String label;

  const IconContent({super.key, required this.icon, required this.label});

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
        const SizedBox(
          height: 15.0,
        ),
        Text(
          // taking user defined text value
          label,
          style: labelStyle,
        ),
      ],
    );
  }
}