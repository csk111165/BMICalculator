import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  Gender? selectedGender;
  int height = 180;
  int weight = 70;
  int age = 5;

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
              cardChild: const IconContent(
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
              cardChild: const IconContent(
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
                const Text(
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
                    const Text(
                      'cm',
                      style: labelStyle,
                    ),
                  ],
                ),
                // add a slider
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: const Color(0xFFEB1555),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: const Color(0xFF8D8E98),
                    overlayColor: const Color(0x29EB1555),
                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: const RoundSliderOverlayShape(overlayRadius: 30),
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
                      const Text(
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
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          // to give some space between button
                          const SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                              icon: FontAwesomeIcons.minus,
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
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'AGE',
                        style: labelStyle,
                      ),
                      Text(
                        age.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          // to give some space between button
                          const SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              })
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            // adding the code for screen navigation, it will allow to go to other screen results page
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultsPage()));
          },
          child: Container(
            color: bottomContainerColor,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
            padding: const EdgeInsets.only(bottom: 20.0),
            child: const Center(
              child: Text(
                'CALCULATE',
                style: klargeButtonStyle,
                ),
            ),
          ),
        ),
      ]),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const RoundIconButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      enableFeedback: false,
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
