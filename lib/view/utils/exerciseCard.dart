import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pump_up/view/pages/exercisesPage.dart/exoDescription.dart';
import 'package:pump_up/view/utils/descriptionList.dart';

class ExerciseCard extends StatelessWidget {
  String image;
  String title;
  String sets;
  int key_num;
  String tag;
  ExerciseCard(
      {super.key,
      required this.tag,
      required this.image,
      required this.title,
      required this.sets,
      required this.key_num});

  @override
  List<ExoDescription> exercises = [];
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      onTap: () {
        print(key_num);
        switch (tag) {
          case "chest":
            Get.to(
              () => DescriptionList.chest_exercises[key_num],
            );
            break;
          case "back":
            Get.to(() => DescriptionList.back_exercises[key_num]);
            break;
          case "shoulder":
            Get.to(() => DescriptionList.shoulder_exercies[key_num]);
            break;
          case "biceps":
            Get.to(() => DescriptionList.biceps_description[key_num]);
            break;
          case "triceps":
            Get.to(() => DescriptionList.triceps_exercises[key_num]);
            break;
          case "forearms":
            Get.to(() => DescriptionList.forearm_exercises[key_num]);
            break;
          case "legs":
            Get.to(() => DescriptionList.leg_exercises[key_num]);
            break;
          case "abs":
            Get.to(() => DescriptionList.abs_exercises[key_num]);
          default:
        }
      },
      child: Container(
        margin: EdgeInsets.only(top: 15.r),
        width: 1.sw,
        height: 115.h,
        color: const Color(0xFF232323),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.r, right: 10.r),
              child: Hero(
                tag: "Exercise$tag$key_num",
                child: CircleAvatar(
                  maxRadius: 40.r,
                  backgroundImage: AssetImage(image),
                  backgroundColor: const Color(0xFFD9D9D9).withOpacity(0.03),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: "Arimo",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  sets,
                  style: TextStyle(
                      fontFamily: "Arimo",
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 14.sp),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
