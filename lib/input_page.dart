// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unnecessary_import, sort_child_properties_last, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerWeight = 80.0;
const color = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Expanded buildBox() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0), //Bottom row
        ),
      ),
    );
  }

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
          Column(children: [
        //TOP LAYER STARTING
        Expanded(
          child: Row(
            children: [
              //TOP LAYER 1ST CONTAINER STARTING
              Expanded(
                child: ReusableCard(
                  colour: color,
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
                  colour: color,
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
            colour: color,
            // cardChild: Slider(value: 0, onChanged: onChanged),
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
                  colour: color,
                ),
              ),
              //BOTTOM ROW FIRST CONTAINER ENDED AND SECOND STARTED
              Expanded(
                child: ReusableCard(
                  colour: color,
                ),
              )
              //BOTTOM ROW 2ND CONTAINER ENDED
            ],
          ),
        ),
        //BOTTOM ROW ENDED
        Container(
          color: Color(0xFFEB1555),
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerWeight,
        )
      ]),
    );
  }
}


