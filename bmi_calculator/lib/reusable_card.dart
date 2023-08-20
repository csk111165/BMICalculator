import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {

  final Color cardColor;
  final Widget? cardChild;
  final VoidCallback? onPress;
  ReusableCard({ required this.cardColor,  this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        // for magin
        margin: EdgeInsets.all(15),
    
        // for border radius
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          // when we define the BoxDecoration the color property should be inside here only
          color: cardColor, // this is coming from the constructor
        ),
      ),
    );
  }
}
