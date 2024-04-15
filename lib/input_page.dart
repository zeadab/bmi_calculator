import 'package:bmi_calculator/widgets/Cardinhalt.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/widgets/REusablecard.dart';

const buttomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selecteGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Reusablecard(
                        mcolor: maleCardColor =
                        selecteGender == Gender.male
                            ? activecardcolor
                            : containerCArdColor,
                        cardChild:
                        cardInhalt(icon: FontAwesomeIcons.mars, label: "MALE"),
                        onpress: () {
                          setState(() {
                            selecteGender = Gender.male;
                          });
                        },
                      )),
                  Expanded(
                      child: Reusablecard(
                        mcolor: femaleCardColor = selecteGender == Gender.female
                            ? activecardcolor
                            : containerCArdColor,
                        cardChild:
                        cardInhalt(
                            icon: FontAwesomeIcons.venus, label: "FEMALE"),
                        onpress: () {
                          setState(() {
                            selecteGender = Gender.female;
                          });
                        },
                      )),
                ],
              )),
          Expanded(child: Reusablecard(mcolor: containerCArdColor)),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: Reusablecard(mcolor: containerCArdColor)),
                  Expanded(child: Reusablecard(mcolor: containerCArdColor)),
                ],
              )),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            color: const Color(0xffeb1555),
            height: buttomContainerHeight,
          )
        ],
      ),
    );
  }
}
