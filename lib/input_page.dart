// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unnecessary_import, sort_child_properties_last, unused_import

import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:
          //FRONT PAGE UI STARTED
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        //TOP LAYER STARTING
        Expanded(
          child: Row(
            children: [
              //TOP LAYER 1ST CONTAINER STARTING
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: IconCard(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              //TOP LAYER 1ST CONTAINER ENDED
              //TOP LAYER 2ND CONTAINER STARTING
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: IconCard(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
              //TOP LAYER 2ND CONTAINER ENDED
            ],
          ),
        ),
        //TOP LAYER COMPLETED
        //MIDDLE CARD STARTING
        Expanded(
          child: ReusableCard(
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT'),
                //DISPLAYING HEIGHT BY SLIDER
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextLabel,
                    ),
                    Text(
                      'cm',
                      style: labelTextStyle,
                    )
                  ],
                ),
                //SLIDER WIDGET ADDED HERE
                Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 230,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    })
              ],
            ),
            colour: activeCardColor,
          ),
        ),
        //MIDDLE CARD ENDING

        //BOTTOM ROW STARTING HERE
        Expanded(
          child: Row(
            children: [
              //BOTTOM ROW 1ST CONTAINER STARTING
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
              //BOTTOM ROW FIRST CONTAINER ENDED AND SECOND STARTED
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              )
              //BOTTOM ROW 2ND CONTAINER ENDED
            ],
          ),
        ),
        //BOTTOM ROW ENDED
        Container(
          color: bottomCardColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerWeight,
        )
      ]),
    );
  }
}
