import 'package:isar/isar.dart';
part 'product.g.dart';

@Collection()
class Product {
  Id? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;
}

@embedded
class Rating {
  double? rate;
  int? count;
}
