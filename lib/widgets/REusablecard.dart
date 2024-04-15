import 'package:flutter/material.dart';

const activecardcolor = Color(341818);
const containerCArdColor = Color(0XFF1D1E33);

enum Gender { male, female }

Color maleCardColor = containerCArdColor;
Color femaleCardColor = containerCArdColor;

class Reusablecard extends StatelessWidget {
  Reusablecard({required this.mcolor, this.cardChild, this.onpress});

  final Function()? onpress;
  final Color mcolor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onpress,
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: mcolor,
          ),
          child: cardChild,
        ));
  }
}
