import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          CustomPaint(
            painter: HeaderPainter(), //background can change
            size: Size(double.infinity, 200),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: CircleAvatar(
              minRadius: 20,
              maxRadius: 25,
              foregroundImage: AssetImage('assets/images/PP1.jpg'),
            ),
          ),
          Positioned(
            left: 30,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    )), //take this from database
                Text('Michaele',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint backColor = Paint()..color = Color(0xff18b0e8);
    //255 fully opaque
    Paint circles = Paint()..color = Colors.white.withAlpha(40);

    canvas.drawRect(
        Rect.fromPoints(Offset(0, 0), Offset(size.width, size.height)),
        backColor);

    canvas.drawCircle(Offset(size.width * .65, 10), 30, circles);
    canvas.drawCircle(Offset(size.width * .65, 130), 10, circles);
    canvas.drawCircle(Offset(size.width - 10, size.height - 10), 20, circles);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      false; //this removes the entire background
}
