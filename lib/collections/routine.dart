import 'package:isar/isar.dart';

@Collection()
class Routine {
  @Id()
  int id = Isar.autoIncrement;

  late String title;

  @Index()
  late DateTime startTime;

  @Index(caseSensitive: false)
  late String day;

  @Index(composite: [CompositeIndex('title')])
  late String category;
}
