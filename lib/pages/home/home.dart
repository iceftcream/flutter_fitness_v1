import 'package:flutter/material.dart';
import 'package:flutter_fitness_v1/pages/home/widgets/activity.dart';
import 'package:flutter_fitness_v1/pages/home/widgets/current.dart';
import 'package:flutter_fitness_v1/pages/home/widgets/header.dart';

import '../../widgets/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppHeader(),
          CurrentPrograms(),
          RecentActivities(),
          BottomNavigation(),
        ],
      ),
    );
  }
}
