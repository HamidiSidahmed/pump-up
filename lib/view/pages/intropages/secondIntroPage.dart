import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondIntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 1.sw,
            height: 1.sh,
            child: Image.asset(
              "assets/backgrounds/N03.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 1.sw,
            height: 1.sh,
            color: Colors.black.withOpacity(0.65),
          ),
          Positioned(
              left: 315.r,
              top: 20.r,
              child: Text(
                "Skip",
                style: TextStyle(
                    fontFamily: "Arimo", color: Colors.white, fontSize: 16.sp),
              )),
          Positioned(
            top: 510.r,
            left: 30.r,
            child: Container(
              width: 280.w,
              child: Text(
                "Discover your fitness journey",
                style: TextStyle(
                    fontFamily: "Arimo",
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
              top: 585.r,
              left: 30.r,
              child: Container(
                width: 300.w,
                child: Text(
                  "Track workout , set goals and visualize your progress",
                  style: TextStyle(
                    fontFamily: "Arimo",
                    color: Colors.white,
                    fontSize: 14.sp,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
