import 'package:isar/isar.dart';
import 'package:routine_app/collections/category.dart';
part 'routine.g.dart';

@Collection()
class Routine {
  //FIXME 3: Type to specify the id property of a collection.
  
  Id id = Isar.autoIncrement;

  late String title;

  @Index()
  late String startTime;

  @Index(caseSensitive: false)
  late String day;

  @Index(composite: [CompositeIndex('title')])
  final category = IsarLink<Category>();
}
