import 'package:hive/hive.dart';
part 'model.g.dart';

@HiveType(typeId: 1)
class Model {
  @HiveField(0)
  String title;

  @HiveField(1)
  List<List> info;

  Model({required this.title, required this.info});
}
