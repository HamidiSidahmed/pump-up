import 'package:flutter/material.dart';
import 'package:pump_up/view/utils/exerciseCard.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AbsPage extends StatelessWidget {
  const AbsPage({super.key});

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
                          "Abs Workout",
                          style: TextStyle(
                              fontFamily: "Arimo",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp),
                        ),
                      ),
                      Text(
                        "4 exercises",
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
                      tag: "exo7",
                      child: Image.asset("assets/muscle_images/abs.png")),
                )
              ],
            ),
            ExerciseCard(
              tag: "abs",
              image: "assets/exercises/abs/crunch machine_clip.png",
              title: "Crunches . Machine",
              sets: "4 Sets x 15 Reps",
              key_num: 0,
            ),
            ExerciseCard(
              tag: "abs",
              image: "assets/exercises/abs/lag raises_clip.png",
              title: "Legs Raises . Dips Machine",
              sets: "4 Sets x 15 Reps",
              key_num: 1,
            ),
            ExerciseCard(
              tag: "abs",
              image: "assets/exercises/abs/plank.png",
              title: "Plank",
              sets: "1 minutes",
              key_num: 2,
            ),
            ExerciseCard(
              tag: "abs",
              image: "assets/exercises/abs/SIDE PLANK.png",
              title: "Side Plank",
              sets: "1 minutes",
              key_num: 3,
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
