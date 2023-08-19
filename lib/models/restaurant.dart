import 'package:ar_food_app/models/food.dart';

class Restaurant {
  Restaurant(
      {this.imageUrl,
      this.restaurantName,
      this.resAddress,
      this.rating,
      this.menu});

  String? imageUrl;
  String? restaurantName;
  String? resAddress;
  int? rating;
  List<Food>? menu;
}
