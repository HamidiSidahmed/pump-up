import 'package:flutter/material.dart';
import 'package:pump_up/model/model.dart';
import 'package:pump_up/view/pages/exercisesPage.dart/chest.dart';
import 'package:pump_up/view/pages/exercisesPage.dart/exoDescription.dart';
import 'package:pump_up/view/pages/firstPage.dart';
import 'package:pump_up/view/pages/homePage.dart';
import 'package:pump_up/view/pages/introPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pump_up/view/pages/intropages/fourthIntroPage.dart';
import 'package:pump_up/view/pages/intropages/secondIntroPage.dart';
import 'package:pump_up/view/pages/intropages/thirdIntroPage.dart';
import 'package:pump_up/view/pages/programmes/fullBodyPage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await Hive.initFlutter();
  Hive.registerAdapter(ModelAdapter());
  runApp(ScreenUtilInit(
    designSize: Size(390, 800),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: child,
      );
    },
    child: HomePage(),
  ));
}
