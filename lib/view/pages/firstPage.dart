import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pump_up/view/pages/introPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 1.sh,
            width: 1.sw,
            child: Image.asset(
              "assets/backgrounds/01.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 1.sh,
            width: 1.sw,
            color: Colors.black.withOpacity(0.65),
          ),
          Container(
            height: 1.sh,
            width: 1.sw,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 385.r),
                  child: Text(
                    "PUMP-UP",
                    style: TextStyle(
                        fontFamily: "Arimo",
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18.r),
                  child: Text(
                    "- Stronger every day-",
                    style: TextStyle(
                      fontFamily: "Arimo",
                      color: Colors.white,
                      fontSize: 24.sp,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(() => IntroPage(),
                      transition: Transition.rightToLeftWithFade),
                  child: Container(
                    margin: EdgeInsets.only(top: 200),
                    width: 100.w,
                    child: RotatedBox(
                        quarterTurns: 1,
                        child: Image.asset("assets/icons/arrows.png")),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
