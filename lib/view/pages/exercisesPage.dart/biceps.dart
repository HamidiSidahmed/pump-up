import 'package:flutter/material.dart';
import '../../utils/exerciseCard.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BicepsPage extends StatelessWidget {
  const BicepsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child: RotatedBox(
                    quarterTurns: 2,
                    child: Container(
                      margin: EdgeInsets.only(right: 20.r),
                      width: 25.r,
                      height: 25.r,
                      child: Image.asset("assets/icons/right-arrow.png"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Biceps Workout",
                          style: TextStyle(
                              fontFamily: "Arimo",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp),
                        ),
                      ),
                      Text(
                        "5 exercises",
                        style: TextStyle(
                            fontFamily: "Arimo",
                            color: Colors.white.withOpacity(0.8)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 110.r),
                  width: 70.r,
                  child: Hero(
                      tag: "exo3",
                      child: Image.asset("assets/muscle_images/biceps.png")),
                )
              ],
            ),
            ExerciseCard(
              tag: "biceps",
              image: "assets/exercises/biceps/EZ barbell biceps curl_clip.png",
              title: "Biceps Curl . EZ Barbell",
              sets: "4 Sets x 12 Reps",
              key_num: 0,
            ),
            ExerciseCard(
              tag: "biceps",
              image: "assets/exercises/biceps/hummer curl_clip.png",
              title: "Humer Curl . Dumbell ",
              sets: "4 Sets x 12 Reps",
              key_num: 1,
            ),
            ExerciseCard(
              tag: "biceps",
              image:
                  "assets/exercises/biceps/EZ barbell reverse biceps curl_clip.png",
              title: "Ruverse Curl . EZ Barbell",
              sets: "4 Sets x 12 Reps",
              key_num: 2,
            ),
            ExerciseCard(
              tag: "biceps",
              image: "assets/exercises/biceps/Seated dumbell curl_clip.png",
              title: "Seated Curl . Dumbell",
              sets: "4 Sets x 12 Reps",
              key_num: 3,
            ),
            ExerciseCard(
              tag: "biceps",
              image: "assets/exercises/biceps/Cable Biceps Curl_clip.png",
              title: "Biceps Curl . Cable",
              sets: "4 Sets x 12 Reps",
              key_num: 4,
            ),
            SizedBox(
              height: 35,
            )
          ],
        ),
      ),
    );
  }
}
