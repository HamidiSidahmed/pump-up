import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pump_up/view/pages/homePage.dart';

class FourthIntroPage extends StatelessWidget {
  FourthIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: 1.sw,
            height: 1.sh,
            child: Image.asset(
              "assets/backgrounds/N05.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 1.sw,
            height: 1.sh,
            color: Colors.black.withOpacity(0.65),
          ),
          Positioned(
            left: 45.r,
            top: 350.r,
            child: Container(
              height: 50.r,
              width: 300.w,
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(
                    fontFamily: "Arimo", color: Colors.white, fontSize: 16.sp),
                cursorOpacityAnimates: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  hintStyle:
                      TextStyle(color: Color(0xFFD9D9D9).withOpacity(0.65)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
          ),
          Positioned(
            left: 115.r,
            top: 700.r,
            child: InkWell(
              onTap: () => Get.to(() => HomePage()),
              child: Container(
                child: Center(
                  child: Text(
                    "Done",
                    style: TextStyle(
                        fontFamily: "Arimo",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                width: 150.r,
                height: 45.r,
                decoration: BoxDecoration(
                    color: Color(0xFF8CEF0D),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
