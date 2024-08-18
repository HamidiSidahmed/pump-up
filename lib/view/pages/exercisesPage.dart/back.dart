import 'package:flutter/material.dart';
import '../../utils/exerciseCard.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackPage extends StatelessWidget {
  const BackPage({super.key});

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
                          "Back Workout",
                          style: TextStyle(
                              fontFamily: "Arimo",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp),
                        ),
                      ),
                      Text(
                        "6 exercises",
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
                      tag: "exo1",
                      child:
                          Image.asset("assets/muscle_images/back -full.png")),
                )
              ],
            ),
            ExerciseCard(
              tag: "back",
              image: "assets/exercises/back/barbell rowing_clip.png",
              title: "Rowing . Barbell",
              sets: "4 Sets x 12 Reps",
              key_num: 0,
            ),
            ExerciseCard(
              tag: "back",
              image: "assets/exercises/back/lat pull down_clip.png",
              title: "Lat Pull Down . Machine ",
              sets: "4 Sets x 12 Reps",
              key_num: 1,
            ),
            ExerciseCard(
              tag: "back",
              image: "assets/exercises/back/one hand dumbbell rowing_clip.png",
              title: "One Hand Rowing . Dumbell",
              sets: "4 Sets x 12 Reps",
              key_num: 2,
            ),
            ExerciseCard(
              tag: "back",
              image: "assets/exercises/back/Seated Cable Row_clip.png",
              title: "Seated Cable Row . Machine",
              sets: "4 Sets x 12 Reps",
              key_num: 3,
            ),
            ExerciseCard(
              tag: "back",
              image: "assets/exercises/back/cable pull down_clip.png",
              title: "Cable Pull Down .",
              sets: "4 Sets x 12 Reps",
              key_num: 4,
            ),
            ExerciseCard(
              tag: "back",
              image: "assets/exercises/back/Pull Up.png",
              title: "Pull Up",
              sets: "4 Sets x 12 Reps",
              key_num: 5,
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
