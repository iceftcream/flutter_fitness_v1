import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Color(0xfff8f8f8), //can change this color
      child: IconTheme(
        data: IconThemeData(color: Color(0xffabadb4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, //spread out icons
          children: [
            Icon(Icons.add_chart),
            Icon(Icons.search),
            Transform.translate(
              //puts the button top (bigger than other icons)
              offset: Offset(0, -15),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                child: Container(
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, //rounded button
                      gradient: LinearGradient(
                        begin: Alignment.topLeft, //gradient change
                        colors: [
                          Color(0xff92e2ff),
                          Color(0xff1ebdf8),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          //gives a shadow below button
                          color:
                              Colors.black12, //theres different levels of black
                          offset: Offset(3, 3),
                          blurRadius: 3,
                        )
                      ]),
                  child: Icon(Icons.home, color: Colors.white), //change this
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/details');
              },
              child: Icon(Icons.date_range),
            ),
            Icon(Icons.settings),
          ],
        ),
      ),
    );
  }
}
