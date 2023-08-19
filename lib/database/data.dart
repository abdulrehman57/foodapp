import 'package:ar_food_app/models/food.dart';
import 'package:ar_food_app/models/orders.dart';
import 'package:ar_food_app/models/restaurant.dart';
import 'package:ar_food_app/models/user.dart';

// Food Data
final food1 =
    Food(imageUrl: 'images/pizza.jpg', foodName: 'Pizza', foodPrice: 5);
final food2 =
    Food(imageUrl: 'images/burger.jpg', foodName: 'Burger', foodPrice: 4);
final food3 =
    Food(imageUrl: 'images/pasta.jpg', foodName: 'Pasta', foodPrice: 3);
final food4 =
    Food(imageUrl: 'images/pancakes.jpg', foodName: 'PanCakes', foodPrice: 2);
final food5 =
    Food(imageUrl: 'images/ramen.jpg', foodName: 'Ramen', foodPrice: 6);
final food6 =
    Food(imageUrl: 'images/burrito.jpg', foodName: 'Burrito', foodPrice: 4);
final food7 =
    Food(imageUrl: 'images/steak.jpg', foodName: 'Steak', foodPrice: 1);
final food8 =
    Food(imageUrl: 'images/salmon.jpg', foodName: 'Salmon Fish', foodPrice: 3);

// Restaurant Data
final res1 = Restaurant(
    imageUrl: 'images/restaurant0.jpg',
    restaurantName: 'Restaurant 1',
    resAddress: 'Faisalabad',
    menu: [food1, food2, food3, food4]);

final res2 = Restaurant(
    imageUrl: 'images/restaurant1.jpg',
    restaurantName: 'Restaurant 2',
    resAddress: 'Faisalabad',
    menu: [food1, food2, food5]);

final res3 = Restaurant(
    imageUrl: 'images/restaurant2.jpg',
    restaurantName: 'Restaurant 3',
    resAddress: 'Faisalabad',
    menu: [food5, food6, food7, food8]);

final res4 = Restaurant(
    imageUrl: 'images/restaurant3.jpg',
    restaurantName: 'Restaurant 4',
    resAddress: 'Faisalabad',
    menu: [food2, food4, food6, food8]);

final res5 = Restaurant(
    imageUrl: 'images/restaurant4.jpg',
    restaurantName: 'Restaurant 5',
    resAddress: 'Faisalabad',
    menu: [food1, food3, food5, food7]);

//Orders Data
final order1 =
    Orders(orderDate: 'July 28, 2023', qty: 2, food: food1, restaurant: res1);
final order2 =
    Orders(orderDate: 'July 27, 2023', qty: 4, food: food2, restaurant: res2);
final order3 =
    Orders(orderDate: 'July 26, 2023', qty: 1, food: food5, restaurant: res3);
final order4 =
    Orders(orderDate: 'July 25, 2023', qty: 3, food: food4, restaurant: res4);
final order5 =
    Orders(orderDate: 'July 24, 2023', qty: 1, food: food3, restaurant: res5);

//User Data

final currentUser = User(
    userName: 'Abdul Rehman',
    cart: [order1, order2, order3, order4],
    order: [order1, order3, order4, order5]);

//Restaurant List
List<Restaurant> resList = [res1, res2, res3, res4, res5];
