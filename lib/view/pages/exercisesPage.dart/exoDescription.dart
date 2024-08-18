import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ExoDescription extends StatelessWidget {
  int key_num;
  String image;
  String description;
  List<String> activation;
  String tag;
  ExoDescription(
      {super.key,
      required this.tag,
      required this.key_num,
      required this.image,
      required this.description,
      required this.activation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 1.sw,
            height: 230.h,
            color: Color(0xFF232323),
            child: Stack(
              children: [
                Container(
                  width: 1.sw,
                  height: 230.h,
                  margin: EdgeInsets.only(left: 0),
                  child: Hero(
                    tag: "Exercise$tag$key_num",
                    child: Image.asset(
                      image,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: RotatedBox(
                    quarterTurns: 2,
                    child: Container(
                      margin: EdgeInsets.only(right: 20.r, bottom: 10.r),
                      width: 25.r,
                      height: 25.r,
                      child: Image.asset("assets/icons/right-arrow.png"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30.r, top: 40.r),
            child: Text(
              "Description : ",
              style: TextStyle(
                  fontFamily: "Arimo",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30.r, top: 10.r),
            width: 342.w,
            child: Text(
                style: TextStyle(
                    fontFamily: "Arimo", color: Colors.white, fontSize: 14.sp),
                description),
          ),
          Container(
            margin: EdgeInsets.only(left: 30.r, top: 40.r),
            child: Text(
              "Muscle Activation : ",
              style: TextStyle(
                  fontFamily: "Arimo",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp),
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: activation.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 30.r, top: 10.r),
                  width: 342.w,
                  child: Text(
                      style: TextStyle(
                          fontFamily: "Arimo",
                          color: Colors.white,
                          fontSize: 14.sp),
                      activation[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
