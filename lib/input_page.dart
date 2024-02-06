import 'package:flutter/material.dart';

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
              Expanded(
                  child: Reusablecard()),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              )),
            ],
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              )),
            ],
          )),
        ],
      ),
    );
  }
}

class Reusablecard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.blue,
                    ),
                  );
  }


}
