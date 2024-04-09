// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unnecessary_import, sort_child_properties_last, unused_import, prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'results_page.dart';
import 'bottombutton.dart';
import 'package:bmi_calculator_flutter/roundIconButton.dart';

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
  int weight = 60;
  int age = 18;

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
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0)),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 230,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      }),
                )
              ],
            ),
            colour: activeCardColor,
          ),
        ),
        //MIDDLE CARD ENDING

        //BOTTOM ROW STARTING HERE
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //BOTTOM ROW 1ST CONTAINER STARTING
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT(in KG)',
                        style: labelTextStyle,
                      ),
                      //WEIGHT DISPLAYING
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weight.toString(),
                            style: kNumberTextLabel,
                          ),
                        ],
                      ),
                      //PLUS AND MINUS BUTTONS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //BOTTOM ROW FIRST CONTAINER ENDED AND SECOND STARTED
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: labelTextStyle,
                      ),
                      //WEIGHT DISPLAYING
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            age.toString(),
                            style: kNumberTextLabel,
                          ),
                        ],
                      ),
                      //PLUS AND MINUS BUTTONS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //BOTTOM ROW 2ND CONTAINER ENDED
            ],
          ),
        ),
        //BOTTOM ROW ENDED

        //CALCULATE BUTTON HERE
        BottomButton(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ResultPage();
              }),
            );
          },
          label: 'CALCULATE',
        )
      ]),
    );
  }
}

