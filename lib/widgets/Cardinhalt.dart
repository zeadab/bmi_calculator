import 'package:flutter/material.dart';
class cardInhalt extends StatelessWidget {
   cardInhalt({
     required this.icon, required this.label
  });
  final textStyle = const TextStyle(
      fontSize: 18.00,
      color: Colors.white
  );
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 10.0), // Adjusted height for spacing
        Text(
          label,
          style: textStyle,
        ),
      ],
    );
  }
}