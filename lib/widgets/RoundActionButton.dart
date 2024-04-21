import 'package:flutter/material.dart';

class RounActionButton extends StatelessWidget {
  RounActionButton({required this.iconNeeded, required this.calculate});

  final IconData iconNeeded;
  final Function() calculate;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: calculate,
      fillColor: Color(0xFF4C4F5E),
      child: Icon(iconNeeded),
      constraints: BoxConstraints.tightFor(width: 65.0, height: 65.0),
      shape: CircleBorder(),
    );
  }
}
