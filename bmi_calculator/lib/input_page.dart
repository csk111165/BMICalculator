import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  Gender? selectedGender;
  int height = 180;
  int weight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
            child: Row(children: [
          Expanded(
            // for enabling the touch
            child: ReusableCard(
              onPress: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              cardColor: selectedGender == Gender.male
                  ? activeCardColor
                  : inactiveCardColor,
              cardChild: IconContent(
                icon: FontAwesomeIcons.mars,
                label: 'Male',
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {
                setState(() {
                  selectedGender = Gender.female;
                });
              },
              cardColor: selectedGender == Gender.female
                  ? activeCardColor
                  : inactiveCardColor,
              cardChild: IconContent(
                icon: FontAwesomeIcons.venus,
                label: 'Female',
              ),
            ),
          ),
        ])),

        // this is mid part of the screen having only one widget
        Expanded(
          child: ReusableCard(
            cardColor: activeCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Height",
                  style: labelStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: numberTextStyle,
                    ),
                    Text(
                      'cm',
                      style: labelStyle,
                    ),
                  ],
                ),
                // add a slider
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: Color(0xFFEB1555),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xFF8D8E98),
                    overlayColor:  Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),

        // bottom part contains two row elements
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardColor: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: labelStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Color(0xFF4C4F5E),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              }),
                            // to give some space between button
                            SizedBox(width: 10,),
                            FloatingActionButton(
                              backgroundColor: Color(0xFF4C4F5E),
                              child: Icon(
                                Icons.heart_broken,
                                color: Colors.red,
                              ),
                              onPressed: () {
                               setState(() {
                                 weight--;
                               });
                              })
                          ],
                        ),
                        
                      
                    ],
                  ),
                  ),
                
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: activeCardColor,
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



class RoundIconButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  RoundIconButton({required this.icon,  this.onPressed});

  @override
  Widget build(BuildContext context){
    return RawMaterialButton(
      shape: CircleBorder(),
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      
      fillColor: Colors.red,
    );
  }
}
