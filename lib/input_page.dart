// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          color: Color(0xFF1D1E33),
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
                child: ReusableCard(colour: Color(0xFF1D1E33),),
              ),
              //TOP LAYER 1ST CONTAINER ENDED
              //TOP LAYER 2ND CONTAINER STARTING
              Expanded(
                child: ReusableCard(colour: Color(0xFF1D1E33),),
              ),
              //TOP LAYER 2ND CONTAINER ENDED
            ],
          ),
        ),
        //TOP LAYER COMPLETED
        //MIDDLE CARD STARTING
        Expanded(
          child: ReusableCard(colour: Color(0xFF1D1E33),),
        ),
        //MIDDLE CARD ENDING

        //BOTTOM ROW STARTING HERE
        Expanded(
          child: Row(
            children: [
              //BOTTOM ROW 1ST CONTAINER STARTING
              Expanded(
                child: ReusableCard(colour: Color(0xFF1D1E33),),
              ),
              //BOTTOM ROW FIRST CONTAINER ENDED AND SECOND STARTED
              Expanded(
                child: ReusableCard(colour: Color(0xFF1D1E33),),
              )
              //BOTTOM ROW 2ND CONTAINER ENDED
            ],
          ),
        ),
        //BOTTOM ROW ENDED
      ]),
    );
  }
}

class ReusableCard extends StatelessWidget {
 const ReusableCard({@required this.colour});
 final Color? colour ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0), //1st top row
      ),
    );
  }
}
