import 'package:ar_food_app/models/food.dart';
import 'package:ar_food_app/models/restaurant.dart';

class Orders {
  Orders({this.orderDate, this.qty, this.food, this.restaurant});
  String? orderDate;
  int? qty;
  Food? food;
  Restaurant? restaurant;
}
