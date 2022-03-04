import 'package:isar/isar.dart';

@Collection()
class Category {
  @Id()
  int id = Isar.autoIncrement;

  @Index(unique: true)
  late String name;
}
