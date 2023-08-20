import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {

  final Color cardColor;
  final Widget? cardChild;

  ReusableCard({ required this.cardColor,  this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      // for magin
      margin: EdgeInsets.all(15),

      // for border radius
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // when we define the BoxDecoration the color property should be inside here only
        color: cardColor, // this is coming from the constructor
      ),
    );
  }
}
