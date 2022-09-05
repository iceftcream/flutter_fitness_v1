import 'package:flutter/material.dart';
import 'package:flutter_fitness_v1/pages/home/details/widgets/appbar.dart';
import 'package:flutter_fitness_v1/pages/home/details/widgets/dates.dart';
import 'package:flutter_fitness_v1/pages/home/details/widgets/graph.dart';
import 'package:flutter_fitness_v1/pages/home/details/widgets/info.dart'
    hide Stats;
import 'package:flutter_fitness_v1/pages/home/details/widgets/stats.dart';
import 'package:flutter_fitness_v1/pages/home/details/widgets/steps.dart';
import 'package:flutter_fitness_v1/widgets/bottom_navigation.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MainAppBar(appBar: AppBar()),
      body: Column(
        children: [
          Dates(),
          Steps(),
          Graph(),
          Info(),
          Stats(),
          BottomNavigation(),
        ],
      ),
    );
  }
}
