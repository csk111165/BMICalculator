import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';


const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color bottomContainerColor =  Color(0xFFEB1555);


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateCardColor(int gender) {

    // male card pressed 
    if(gender == 1)
    {
      if(maleCardColor == inactiveCardColor)
      {
        maleCardColor = activeCardColor;
        // this is to avoid the highlight of both male and female card together
        femaleCardColor = inactiveCardColor;
      } 
      else {
        maleCardColor = inactiveCardColor;
      }
    }
    // female card pressed
     if(gender == 2)
    {
      if(femaleCardColor == inactiveCardColor)
      {
        femaleCardColor = activeCardColor;
        // this is to avoid the highlight of both male and female card together
        maleCardColor = inactiveCardColor;
      } 
      else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }


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
            child: GestureDetector(
              
              onTap: () {
                setState(() {
                  updateCardColor(1);
                });
                
              },
              child: ReusableCard(
                cardColor: maleCardColor,
                cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'Male',),
                ),
            ),
          ),
          Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateCardColor(2);
                    });
                  },
                  child: ReusableCard(cardColor: femaleCardColor,
                  cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'Female',),
                  ),
                ),
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
                child: ReusableCard(cardColor: activeCardColor,
                
                ),
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



