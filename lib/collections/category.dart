import 'package:isar/isar.dart';
part 'category.g.dart';

@Collection()
class Category {
  //FIXME 3: Type to specify the id property of a collection.
  
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String name;
}
