import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pump_up/controller/databaseController.dart';
import 'package:pump_up/model/model.dart';

class GymTracker extends StatelessWidget {
  String title;
  int length;
  List<List> list;
  DataBaseController controller;
  int index;
  GymTracker(
      {super.key,
      required this.index,
      required this.title,
      required this.length,
      required this.list,
      required this.controller});
  TextEditingController weightController = TextEditingController();
  TextEditingController repsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 35.r, top: 25.r, bottom: 10),
          width: 1.sw,
          child: Row(
            children: [
              Container(
                width: 275.w,
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: "Arimo",
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 21.sp,
                  ),
                ),
              ),
              InkWell(
                overlayColor: WidgetStatePropertyAll(Colors.transparent),
                onTap: () {
                  controller.removeData(title);
                },
                child: Icon(
                  Icons.delete,
                  size: 22,
                  color: Color(
                    0xFFFF4C4C,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 80.h * length,
          child: ListView.builder(
            padding: EdgeInsets.only(bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemCount: length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5.r, left: 15.r),
                          child: Text(
                            "weight",
                            style: TextStyle(
                                fontFamily: "Arimo",
                                color: Color(0xFFD9D9D9).withOpacity(0.5)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.r, left: 15.r),
                          child: Text(
                            "${list[index][1]} kg",
                            style: TextStyle(
                                fontFamily: "Arimo",
                                color: Colors.white,
                                fontSize: 15.sp),
                          ),
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(left: 35.r, top: 15.r),
                    width: 150.r,
                    height: 65.r,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        border: Border.all(color: Color(0xFF8CEF0D))),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5.r, left: 15.r),
                          child: Text(
                            "reps",
                            style: TextStyle(
                                fontFamily: "Arimo",
                                color: Color(0xFFD9D9D9).withOpacity(0.5)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.r, left: 15.r),
                          child: Text(
                            "${list[index][0]}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontFamily: "Arimo"),
                          ),
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(left: 0.r, top: 15.r),
                    width: 150.r,
                    height: 65.r,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        border: Border.all(color: Color(0xFF8CEF0D))),
                  ),
                ],
              );
            },
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Container(
                    height: 125.h,
                    width: 310.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF232323)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0.h, left: 0.w),
                          width: 115.w,
                          height: 40.h,
                          child: TextField(
                            controller: weightController,
                            keyboardType: TextInputType.number,
                            textAlignVertical: TextAlignVertical.bottom,
                            cursorColor: Colors.white,
                            style: TextStyle(
                                fontFamily: "Arimo",
                                color: Colors.white,
                                fontSize: 12.5.sp),
                            cursorOpacityAnimates: true,
                            decoration: InputDecoration(
                              hintText: "Max Weight",
                              hintStyle: TextStyle(
                                  color: Color(0xFFD9D9D9).withOpacity(0.65)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0.h, left: 0.w),
                          width: 115.w,
                          height: 40.h,
                          child: TextField(
                            controller: repsController,
                            keyboardType: TextInputType.number,
                            textAlignVertical: TextAlignVertical.bottom,
                            cursorColor: Colors.white,
                            style: TextStyle(
                                fontFamily: "Arimo",
                                color: Colors.white,
                                fontSize: 12.5.sp),
                            cursorOpacityAnimates: true,
                            decoration: InputDecoration(
                              hintText: "Reps",
                              hintStyle: TextStyle(
                                  color: Color(0xFFD9D9D9).withOpacity(0.65)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                        InkWell(
                          overlayColor:
                              WidgetStatePropertyAll(Colors.transparent),
                          onTap: () {
                            List<List> currentList = [];

                            currentList = controller.data[index].info;
                            currentList.add(
                                [repsController.text, weightController.text]);

                            controller.insertData(
                                Model(title: title, info: currentList));
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 0.h),
                            width: 25.r,
                            height: 25.r,
                            child: Image.asset("assets/icons/add.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            margin: EdgeInsets.only(left: 33.r, top: 15.r),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.white.withOpacity(0.5),
                  size: 18.r,
                ),
                Text(
                  "Add set",
                  style: TextStyle(
                      fontFamily: "Arimo",
                      fontSize: 13.sp,
                      color: Color(0xFFD9D9D9).withOpacity(0.5)),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
