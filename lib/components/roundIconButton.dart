// ignore_for_file: file_names, sort_child_properties_last, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon,required this.onPress});
  final IconData icon;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      constraints: const BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    );
  }
}
