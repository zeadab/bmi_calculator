import 'package:flutter/material.dart';
const containerCArdColor = Color(0XFF1D1E33);
const buttomContainerHeight=80.0;
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(child: Reusablecard(mcolor: containerCArdColor)),
              Expanded(child: Reusablecard(mcolor: containerCArdColor)),
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
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            color:  Color(0xffeb1555),
            height: buttomContainerHeight,
          )
        ],

      ),
    );
  }
}

class Reusablecard extends StatelessWidget {
  Reusablecard({required this.mcolor});

  final Color mcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: mcolor,
      ),
    );
  }
}
