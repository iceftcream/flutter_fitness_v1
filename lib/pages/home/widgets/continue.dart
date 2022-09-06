import 'package:flutter/material.dart';
import 'package:flutter_fitness_v1/colors.dart';

import '../../../../helpers.dart';

class Program extends StatelessWidget {
  const Program({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Column(
        children: [
          //Semi circular border
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              //Gradient background
              gradient: LinearGradient(
                colors: [
                  AppColor.gradientFirst.withOpacity(0.8),
                  AppColor.gradientSecond.withOpacity(0.9),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(80),
              ),
              //Add Shadows
              boxShadow: [
                BoxShadow(
                  offset: Offset(5, 10),
                  blurRadius: 20,
                  color: AppColor.gradientSecond.withOpacity(0.2),
                ),
              ],
            ),
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
                top: 25,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Continue Program",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.homePageContainerTextSmall,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Legs Toning",
                    style: TextStyle(
                      fontSize: 25,
                      color: AppColor.homePageContainerTextSmall,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "and Glutes Workout",
                    style: TextStyle(
                      fontSize: 25,
                      color: AppColor.homePageContainerTextSmall,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.timer,
                          size: 20, color: AppColor.homePageContainerTextSmall),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "60 min",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColor.homePageContainerTextSmall,
                        ),
                      ),
                      Expanded(child: Container()),
                      Icon(Icons.play_circle_fill,
                          color: Colors.white, size: 60),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
