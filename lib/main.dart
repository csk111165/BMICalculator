import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const InputPage(),
      theme: ThemeData.dark().copyWith(
        colorScheme: ThemeData.dark().colorScheme.copyWith(
              secondary: Colors.green,
            ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1D1E33),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
    );
  }
}
