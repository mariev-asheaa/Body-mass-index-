import 'package:bmi_app/constants.dart';
import 'package:bmi_app/views/home.dart';
import 'package:bmi_app/views/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( BMI());
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      home: home(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color:Color(0xff3a506b)
        ),
      ),
    );
  }
}
