import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(children: [
        Expanded(
            child: Row(children: [
          Expanded(
            child: ReusableCard(cardColor: Colors.green,),
          ),
          Expanded(
            child: ReusableCard(cardColor: Colors.blue,),
          ),
        ])),

        // this is mid part of the screen having only one widget
        Expanded(
          child: ReusableCard(cardColor: Colors.red,),
        ),

        // bottom part contains two row elements
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(cardColor: Colors.pink,),
              ),
              Expanded(
                child: ReusableCard(cardColor: Colors.purple,),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard({ this.cardColor});
  Color? cardColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      // for magin
      margin: EdgeInsets.all(15),

      // for border radius
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // when we define the BoxDecoration the color property should be inside here only
        color: cardColor,
      ),
    );
  }
}
