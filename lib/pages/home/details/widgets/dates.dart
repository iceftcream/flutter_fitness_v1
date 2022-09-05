import 'package:flutter/material.dart';
import 'package:flutter_fitness_v1/helpers.dart';

class Dates extends StatelessWidget {
  const Dates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DateBox> dateBox = [];

    DateTime date = DateTime.now().subtract(Duration(
        days: 3)); //this marks the first day, it'll go on (change to database)

    for (int i = 0; i < 7; i++) {
      dateBox.add(DateBox(date: date, active: i == 3));
      date = date.add(Duration(days: 1));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: dateBox,
      ),
    );
  }
}

class DateBox extends StatelessWidget {
  final bool active;
  final DateTime date;

  const DateBox({
    Key? key,
    this.active = false,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70,
      decoration: BoxDecoration(
        gradient: active
            ? LinearGradient(
                colors: [
                  Color(0xff92e2ff),
                  Color(0xff1ebdf8),
                ],
                begin: Alignment.topCenter,
              )
            : null,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white, //this the border around the days
        ),
      ),
      child: DefaultTextStyle.merge(
        style: active ? TextStyle(color: Colors.white) : null,
        child: Column(
          children: [
            SizedBox(height: 8),
            Text(daysOfWeek[date.weekday]!,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 8),
            Text(
              date.day.toString().padLeft(
                  2, '0'), //ensures that its 2 char (08, 09, 10, 11...)
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
