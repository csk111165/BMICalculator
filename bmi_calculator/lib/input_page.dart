import 'package:flutter/material.dart';


const double bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor =  Color(0xFFEB1555);


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(children: [
        Expanded(
            child: Row(children: [
          Expanded(
            child: ReusableCard(cardColor: activeCardColor),
          ),
          Expanded(
            child: ReusableCard(cardColor: activeCardColor),
          ),
        ])),

        // this is mid part of the screen having only one widget
        Expanded(
          child: ReusableCard(cardColor: activeCardColor),
        ),

        // bottom part contains two row elements
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(cardColor: activeCardColor),
              ),
              Expanded(
                child: ReusableCard(cardColor: activeCardColor),
              ),
              
            ],
          ),
        ),
        Container(
            color: bottomContainerColor,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
        ),
      ]),
    );
  }
}

class ReusableCard extends StatelessWidget {

  final Color cardColor;
  ReusableCard({ required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
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
