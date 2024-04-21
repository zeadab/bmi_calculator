import 'package:bmi_calculator/constants/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.resultMessage,required this.resultValue,required this.theMessage});
  final String theMessage;
  final String resultValue;
  final String resultMessage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'BMI CALCULATOR',
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text(
              'Your Result ',
              style: kResult,
            ),
          ),
          Expanded(
            child: Container(
                color: kActivecardcolor,
                child: Center(
                    child: Text(
                      theMessage.toString().toUpperCase(),
                  style: kTheMessage,
                ))),
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                        color: kActivecardcolor,
                        child: Center(
                            child: Text(
                              resultValue.toString().toUpperCase(),
                          style: kResultValuenumbers,
                        )))),
              ],
            ),
          ),
          Expanded(
            child: Container(

                child: Center(
                    child: Text(
                      resultMessage.toString().toUpperCase(),
                  style: kTextStyle,
                ))),
          ),
          Expanded(
              child: GestureDetector(
                onTap: () {
    Navigator.pop(context);
    },
                child: Container(
                  color: kPopularPinkColor,
                  width: double.infinity,
    child: Center(child: Text('Re-Calculate',style: kCLickingResult,))),

                ),
              )
        ],
      ),
    );
  }
}
