import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              Expanded(child: Reusablecard(mcolor: containerCArdColor,
              cardChild: cardInhalt(icon:FontAwesomeIcons.mars,label:"MALE"),
              )),
              Expanded(child: Reusablecard(mcolor: containerCArdColor
              ,
                  cardChild: cardInhalt(icon:FontAwesomeIcons.venus,label:"FEMALE")
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

class cardInhalt extends StatelessWidget {
  const cardInhalt({
    required this.icon, required this.label
  });
final IconData icon;
final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,
        size: 80.0,),
        SizedBox(height: 18.0,),
        Text(label,
        style: TextStyle(
          fontSize: 18.00,
          color: Color(0XFF1D1E33)
        ),
        )
      ],
    );
  }
}

class Reusablecard extends StatelessWidget {
  Reusablecard({required this.mcolor, required this.cardChild});

  final Color mcolor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: mcolor,
      ),
    );
  }
}
