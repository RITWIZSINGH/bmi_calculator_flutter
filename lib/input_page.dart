// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0), //1st top row
                  ),
                ),
              ),
              //TOP LAYER 1ST CONTAINER ENDED
              //TOP LAYER 2ND CONTAINER STARTING
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
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
          child: Container(
            margin: EdgeInsets.all(15.0), //Middle layout
            decoration: BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        //MIDDLE CARD ENDING

        //BOTTOM ROW STARTING HERE
        Expanded(
          child: Row(
            children: [
              //BOTTOM ROW 1ST CONTAINER STARTING
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0), //Bottom row
                  ),
                ),
              ),
              //BOTTOM ROW FIRST CONTAINER ENDED AND SECOND STARTED
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
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
