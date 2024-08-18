import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pump_up/view/pages/exercisesPage.dart/abs.dart';
import 'package:pump_up/view/pages/exercisesPage.dart/back.dart';
import 'package:pump_up/view/pages/exercisesPage.dart/biceps.dart';
import 'package:pump_up/view/pages/exercisesPage.dart/chest.dart';
import 'package:pump_up/view/pages/exercisesPage.dart/forearms.dart';
import 'package:pump_up/view/pages/exercisesPage.dart/leg.dart';
import 'package:pump_up/view/pages/exercisesPage.dart/shoulder.dart';
import 'package:pump_up/view/pages/exercisesPage.dart/triceps.dart';

class ExoCard extends StatelessWidget {
  String image;
  String title;
  int key_num;
  ExoCard({required this.image, required this.title, required this.key_num});

  @override
  List<Widget> exercises = [
    ChestPage(),
    BackPage(),
    ShoulderPage(),
    BicepsPage(),
    TricepsPage(),
    ForearmsPage(),
    LegPage(),
    AbsPage()
  ];
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => exercises[key_num],
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 25.r),
        width: 115.r,
        height: 115.r,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
              tag: "exo$key_num",
              child: Container(
                width: 55.r,
                height: 55.r,
                child: Image.asset(image),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Arimo",
                fontSize: 14.sp,
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Color(0xFF232323),
            border: Border.all(color: Color(0xFF8CEF0D), width: 1),
            borderRadius: BorderRadius.circular(10.r)),
      ),
    );
  }
}
