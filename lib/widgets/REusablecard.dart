import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  Reusablecard({required this.mcolor, this.cardChild});

  final Color mcolor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: mcolor,
      ),
      child: cardChild,
    );
  }
}
