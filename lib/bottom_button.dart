import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  
  final VoidCallback onTap;
  final String  buttonTitle;
  BottomButton({required this.onTap,  required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // adding the code for screen navigation, it will allow to go to other screen results page
      child: Container(
        color: bottomContainerColor,
        width: double.infinity,
        margin:  EdgeInsets.only(top: 30.0),
        height: bottomContainerHeight,
        padding:  EdgeInsets.only(bottom: 5.0),
        child:  Center(
          child: Text(
            buttonTitle,
            style: klargeButtonStyle,
            ),
        ),
      ),
    );
  }
}