import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdIntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 1.sw,
            height: 1.sh,
            child: Image.asset(
              "assets/backgrounds/N04.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 1.sw,
            height: 1.sh,
            color: Colors.black.withOpacity(0.65),
          ),
          Positioned(
            top: 510.r,
            left: 30.r,
            child: Container(
              width: 270.w,
              child: Text(
                "Are you ready to start your journey",
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
                width: 275.w,
                child: Text(
                  "Every workout matters. Track it all, crush your goals",
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
