import 'package:ar_food_app/models/food.dart';
import 'package:ar_food_app/models/restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  RestaurantScreen({super.key, this.restaurant});
  Restaurant? restaurant;

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage(widget.restaurant!.imageUrl!),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .33,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.redAccent.shade400,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.restaurant!.restaurantName!,
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                widget.restaurant!.resAddress!,
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
                onPressed: () {},
                child: const Text(
                  'Reviews',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
                onPressed: () {},
                child: const Text(
                  'Contact',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'Menu',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(10.0),
              crossAxisCount: 2,
              children: List.generate(widget.restaurant!.menu!.length, (index) {
                Food food = widget.restaurant!.menu![index];
                return Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 155,
                        height: 155,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(food.imageUrl!),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.white,
                          border: Border.all(
                            width: 0.5,
                            color: Colors.grey.shade200,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 155,
                        height: 155,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.black12.withOpacity(0.4),
                              Colors.black26.withOpacity(0.3),
                              Colors.black38.withOpacity(0.4),
                              Colors.black45.withOpacity(0.3),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            food.foodName!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '\$ ${food.foodPrice.toString()}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
