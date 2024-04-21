import 'dart:ffi';
import 'package:bmi_calculator/widgets/Cardinhalt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/widgets/REusablecard.dart';
import 'package:bmi_calculator/widgets/RoundActionButton.dart';
import 'package:bmi_calculator/constants/constans.dart';
import 'result__Page.dart';
import 'package:bmi_calculator/logic/bmi_brain.dart';

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Reusablecard(
                mcolor: maleCardColor = selecteGender == Gender.male
                    ? kActivecardcolor
                    : kContainerCArdColor,
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
                    ? kActivecardcolor
                    : kContainerCArdColor,
                cardChild:
                    cardInhalt(icon: FontAwesomeIcons.venus, label: "FEMALE"),
                onpress: () {
                  setState(() {
                    selecteGender = Gender.female;
                  });
                },
              )),
            ],
          )),
          Expanded(
              child: Reusablecard(
                  mcolor: kContainerCArdColor,
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                          style: kTextStyle,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              kHeight.toString(),
                              style: kValuenumbers,
                            ),
                            Text(
                              'cm',
                              style: kTextStyle,
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            thumbColor: kPopularPinkColor,
                            overlayShape:
                                RoundSliderThumbShape(enabledThumbRadius: 30.0),
                            overlayColor: kPopularPinkColorLight,
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                          ),
                          child: Slider(
                              value: kHeight.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double theValue) {
                                setState(() {
                                  kHeight = theValue.round();
                                });
                              }),
                        ),
                      ]))),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Reusablecard(
                mcolor: kContainerCArdColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Weight',
                      style: kTextStyle,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      kWeight.toString(),
                      style: kValuenumbers,
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        RounActionButton(
                          calculate: () {
                            setState(() {
                              kWeight++;
                            });
                          },
                          iconNeeded: FontAwesomeIcons.plus,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RounActionButton(
                          calculate: () {
                            setState(() {
                              kWeight++;
                            });
                          },
                          iconNeeded: FontAwesomeIcons.minus,
                        )
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Reusablecard(
                mcolor: kContainerCArdColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Age',
                      style: kTextStyle,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      kAge.toString(),
                      style: kValuenumbers,
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        RounActionButton(
                          calculate: () {
                            setState(() {
                              kAge++;
                            });
                          },
                          iconNeeded: FontAwesomeIcons.plus,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RounActionButton(
                          calculate: () {
                            setState(() {
                              kAge++;
                            });
                          },
                          iconNeeded: FontAwesomeIcons.minus,
                        )
                      ],
                    ),
                  ],
                ),
              )),
            ],
          )),
          GestureDetector(
            onTap: () {
              Bmi calc= Bmi(height: kHeight, weight: kWeight);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage(resultMessage: calc.Resultmessage(),resultValue: calc.CalculateBmi(),theMessage: calc.Checkresult(),)));
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: kCLickingResult,

                ),
              ),
              padding: const EdgeInsets.only(bottom: 20),
              width: double.infinity,
              color: kPopularPinkColor,
              height: buttomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}
