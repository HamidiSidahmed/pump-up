import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Plancard extends StatelessWidget {
  String title;
  String description;
  String image;
  Plancard(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 25.r),
          width: 350.w,
          height: 150.h,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF8CEF0D)),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: 150.r,
                width: 150.r,
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        child: Image.asset(
                          image,
                        )),
                    Container(
                      width: 150.r,
                      height: 150.r,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.65),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10))),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.r),
                width: 175.w,
                child: Text(
                  description,
                  style: TextStyle(
                      fontFamily: "Arimo",
                      color: Color(0xFFD9D9D9),
                      fontSize: 13.sp),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 15.r,
          left: 175.r,
          child: Container(
            color: Colors.black,
            child: Hero(
              tag: title,
              child: Text(
                title,
                style: TextStyle(
                    fontFamily: "Arimo", color: Colors.white, fontSize: 15.sp),
              ),
            ),
          ),
        ),
        Positioned(
          top: 145,
          left: 310,
          child: Container(
            width: 22.r,
            height: 22.r,
            child: Image.asset("assets/icons/right-arrow.png"),
          ),
        )
      ],
    );
  }
}
