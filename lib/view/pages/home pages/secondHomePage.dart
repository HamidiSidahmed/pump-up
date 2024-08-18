import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pump_up/controller/databaseController.dart';
import 'package:pump_up/model/model.dart';
import 'package:pump_up/view/utils/gymTracker.dart';
import 'package:pump_up/view/utils/muscleCard.dart';
import 'package:get/get.dart';

class Secondhomepage extends StatelessWidget {
  Secondhomepage({super.key});
  DataBaseController data = Get.put(DataBaseController());
  TextEditingController text = TextEditingController();
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10).r,
            width: 1.sw,
            height: 30.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "S",
                  style: TextStyle(
                      color: Color(0xFF646464),
                      fontFamily: "Arimo",
                      fontSize: 14.sp),
                ),
                Text(
                  "M",
                  style: TextStyle(color: Color(0xFF646464), fontSize: 14.sp),
                ),
                Text(
                  "T",
                  style: TextStyle(color: Color(0xFF646464), fontSize: 14.sp),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF232323)),
                  height: 30.h,
                  width: 116.w,
                  child: Center(
                    child: Text(
                      "Wendnesday",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Text(
                  "T",
                  style: TextStyle(color: Color(0xFF646464), fontSize: 14.sp),
                ),
                Text(
                  "F",
                  style: TextStyle(color: Color(0xFF646464), fontSize: 14.sp),
                ),
                Text(
                  "S",
                  style: TextStyle(color: Color(0xFF646464), fontSize: 14.sp),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40.h,
                width: 275.w,
                child: Builder(builder: (context) {
                  return TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    cursorColor: Colors.white,
                    style: TextStyle(
                        fontFamily: "Arimo",
                        color: Colors.white,
                        fontSize: 14.sp),
                    cursorOpacityAnimates: true,
                    decoration: InputDecoration(
                      suffixIcon: Container(
                        padding: EdgeInsets.all(11),
                        child: Image.asset("assets/icons/search.png"),
                      ),
                      hintText: "Search here",
                      hintStyle:
                          TextStyle(color: Color(0xFFD9D9D9).withOpacity(0.65)),
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
                  );
                }),
              ),
              InkWell(
                onTap: () {
                  FocusNode().unfocus();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          width: 310.r,
                          height: 135.r,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFF232323)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 40.h,
                                  width: 210.w,
                                  child: TextField(
                                    controller: text,
                                    textAlignVertical: TextAlignVertical.bottom,
                                    cursorColor: Colors.white,
                                    style: TextStyle(
                                        fontFamily: "Arimo",
                                        color: Colors.white,
                                        fontSize: 14.sp),
                                    cursorOpacityAnimates: true,
                                    decoration: InputDecoration(
                                      hintText: "Exercise Name",
                                      hintStyle: TextStyle(
                                          color: Color(0xFFD9D9D9)
                                              .withOpacity(0.65),
                                          fontSize: 13.sp),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    data.insertData(
                                        Model(title: text.text, info: []));
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 25.r,
                                    height: 25.r,
                                    child: Image.asset("assets/icons/add.png"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10.r),
                  width: 35.r,
                  height: 35.r,
                  child: Image.asset("assets/icons/gym_add.png"),
                ),
              )
            ],
          ),
          GetBuilder<DataBaseController>(
            builder: (controller) {
              return data.data.length != 0
                  ? Container(
                      height: 600.h,
                      child: ListView.builder(
                        itemCount: data.data.length,
                        itemBuilder: (context, index) {
                          return GymTracker(
                            index: index,
                            title: data.data[index].title,
                            length: data.data[index].info.length,
                            list: data.data[index].info,
                            controller: controller,
                          );
                        },
                      ),
                    )
                  : AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 580.h,
                          ),
                          Container(
                            width: 150.r,
                            height: 150.r,
                            child: Image.asset("assets/icons/biceps.png"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 67.h,
                              ),
                              Text(
                                "LET'S",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp),
                              ),
                              Text(
                                "GET",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp),
                              ),
                              Text(
                                "STRONGER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
            },
          )
        ],
      ),
    );
  }
}
