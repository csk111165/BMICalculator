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
            child: Container(
              // for magin
              margin: EdgeInsets.all(15),

              // for border radius
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                // when we define the BoxDecoration the color property should be inside here only
                color: Color(0xFF1D1E33),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // for magin
              margin: EdgeInsets.all(15),

              // for border radius
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                // when we define the BoxDecoration the color property should be inside here only
                color: Color(0xFF1D1E33),
              ),
            ),
          ),
        ])),

        // this is mid part of the screen having only one widget
        Expanded(
          child: Container(
            // for magin
            margin: EdgeInsets.all(15),

            // for border radius
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              // when we define the BoxDecoration the color property should be inside here only
              color: Color(0xFF1D1E33),
            ),
          ),
        ),

        // bottom part contains two row elements
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  // for magin
                  margin: EdgeInsets.all(15),

                  // for border radius
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    // when we define the BoxDecoration the color property should be inside here only
                    color: Color(0xFF1D1E33),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // for magin
                  margin: EdgeInsets.all(15),

                  // for border radius
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    // when we define the BoxDecoration the color property should be inside here only
                    color: Color(0xFF1D1E33),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
