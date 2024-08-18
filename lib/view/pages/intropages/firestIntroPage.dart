import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstIntroPage extends StatelessWidget {
  const FirstIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 1.sw,
            height: 1.sh,
            child: Image.asset(
              "assets/backgrounds/N02.png",
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
                "The ultimate guide to achieve your dream body",
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
                width: 250.w,
                child: Text(
                  "Leave the myths at the door. Real progress starts here",
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
