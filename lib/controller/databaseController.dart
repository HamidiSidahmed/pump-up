import 'package:get/get.dart';
import 'package:pump_up/model/model.dart';
import 'package:hive/hive.dart';

class DataBaseController extends GetxController {
  late Box<Model> box;
  List<Model> data = [];
  @override
  void onInit() async {
    box = await Hive.openBox("box");
    data = box.values.toList();
    update();
    print(data.length);
    super.onInit();
  }

  Future insertData(Model model) async {
    await box.put(model.title, model);
    data = box.values.toList();
    update();
  }

  Future removeData(String title) async {
    await box.delete(title);
    data = box.values.toList();
    update();
  }

  int getData(String title) {
    int length = 0;
    box.values.where(
      (element) {
        (element) => element.title == title;
        length += 1;
        return false;
      },
    );
    print(length);
    return length;
  }
}
