import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stats(value: '325', unit: 'kcal', label: 'Calories'),
        Stats(value: '3.6', unit: 'km', label: 'Distance'),
        Stats(value: '1.5', unit: 'hrs', label: 'Hours'),
      ],
    );
  }
}

class Stats extends StatelessWidget {
  final String value;
  final String unit;
  final String label;

  const Stats(
      {Key? key, required this.value, required this.unit, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text.rich(TextSpan(
          // can have children
          text: value,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          children: [
            TextSpan(text: ' '),
            TextSpan(
                text: unit,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
          ],
        )),
        SizedBox(height: 6),
        Text(label,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
