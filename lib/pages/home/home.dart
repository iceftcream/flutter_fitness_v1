import 'package:flutter/material.dart';
import 'package:flutter_fitness_v1/pages/home/widgets/current.dart';
import 'package:flutter_fitness_v1/pages/home/widgets/header.dart';
import 'package:flutter_fitness_v1/pages/home/widgets/motiv.dart';
import 'package:flutter_fitness_v1/pages/home/widgets/continue.dart';
import 'package:flutter_fitness_v1/pages/home/widgets/video_info.dart';
import 'package:flutter_fitness_v1/pages/home/widgets/videos.dart';

import '../../widgets/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //VideoInfo(),
          //AppHeader(),
          //Motiv(),
          //CurrentPrograms(),
          //Videos(),
          BottomNavigation(),
        ],
      ),
    );
  }
}
