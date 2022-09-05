//everything that is unique to a single program
import 'package:flutter/material.dart';

enum ProgramType {
  cardio,
  lift,
}

class FitnessProgram {
  final AssetImage image;
  final String name;
  final String cals;
  final String time;
  final ProgramType type;

  FitnessProgram({
    required this.image,
    required this.name,
    required this.cals,
    required this.time,
    required this.type,
  });
}

final List<FitnessProgram> fitnessProgram = [
  FitnessProgram(
    image: AssetImage('assets/images/situp.jpg'),
    name: 'Lose Belly Fat',
    cals: '220 kCal',
    time: '45 min',
    type: ProgramType.cardio,
  ),
  FitnessProgram(
    image: AssetImage('assets/images/situp.jpg'),
    name: 'Lose Belly Fat',
    cals: '220 kCal',
    time: '45 min',
    type: ProgramType.lift,
  ),
];
