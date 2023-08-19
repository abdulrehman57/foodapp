import 'package:ar_food_app/models/orders.dart';

class User {
  User({this.userName, this.cart, this.order});
  String? userName;
  List<Orders>? order;
  List<Orders>? cart;
}
