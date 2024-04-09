// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_import

import 'package:bmi_calculator_flutter/components/bottombutton.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
          ),
          //

          //MIDDLE CARD THAT SHOWS BMI
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'OVERWIGHT',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '26.7',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI is quite high, you should watch your diet. ',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          //MIDDLE CARD SHOWING BMI ENDS

          //RE-CALCULATE BUTTON
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              label: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
