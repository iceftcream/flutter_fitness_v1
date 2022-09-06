import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../colors.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List info = [];

  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("assets/json/info.json")
        .then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text("Area of Focus",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColor.homePageTitle,
              )),
          Expanded(
              child: OverflowBox(
            maxWidth: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: info.length, //returns 2
                itemBuilder: (_, i) {
                  return Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        height: 100,
                        margin: EdgeInsets.only(
                            left: 25, right: 25, top: 10, bottom: 10),
                        padding: EdgeInsets.only(
                          bottom: 5,
                        ),
                        //child: Container(),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(info[i]["img"]),
                            scale: 1.5,
                          ),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                offset: Offset(5, 5),
                                color:
                                    AppColor.gradientSecond.withOpacity(0.1)),
                            BoxShadow(
                                blurRadius: 3,
                                offset: Offset(-5, -55),
                                color:
                                    AppColor.gradientSecond.withOpacity(0.1)),
                          ],
                        ),
                        child: Center(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              info[i]["title"],
                              style: TextStyle(
                                  fontSize: 15, color: AppColor.homePageDetail),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          )),
        ],
      ),
    );
  }
}

//reference for making photos in a different class

/*
class VideoItem extends StatefulWidget {
  const VideoItem({Key? key}) : super(key: key);

  @override
  State<VideoItem> createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200,
          height: 170,
          padding: EdgeInsets.only(
            bottom: 5,
          ),
          //child: Container(),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage("assets/images/PP1.jpg"),
              scale: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 3,
                  offset: Offset(5, 5),
                  color: AppColor.gradientSecond.withOpacity(0.1)),
              BoxShadow(
                  blurRadius: 3,
                  offset: Offset(-5, -55),
                  color: AppColor.gradientSecond.withOpacity(0.1)),
            ],
          ),
          child: Center(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Glutes",
                style: TextStyle(fontSize: 20, color: AppColor.homePageDetail),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
*/
