import 'package:isar/isar.dart';
part 'product.g.dart';

@Collection()
class Product {
  Product(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});
  Id? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        "rating": rating?.toJson()
      };
}

@embedded
class Rating {
  Rating({this.rate, this.count});

  double? rate;
  int? count;

  Map<String, dynamic> toJson() => {"rate": rate, "count": count};
}
