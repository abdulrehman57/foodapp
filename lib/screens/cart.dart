import 'package:ar_food_app/database/data.dart';
import 'package:ar_food_app/models/orders.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double totalCost = 0;
    for (var element in currentUser.cart!) {
      totalCost += element.qty! * element.food!.foodPrice!;
    }
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          'Cart (${currentUser.cart!.length})',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: ((context, index) {
            if (index < currentUser.cart!.length) {
              Orders order = currentUser.cart![index];
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 120,
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          image: AssetImage(order.food!.imageUrl.toString()),
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              order.food!.foodName!,
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              order.food!.foodName!,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 0.5,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                    Text(
                                      order.qty.toString(),
                                      style: const TextStyle(fontSize: 18.0),
                                    ),
                                    Text(
                                      '+',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        '\$ ${order.qty! * order.food!.foodPrice!}',
                        style: const TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Estimated Delivery Time',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '30 min',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total Cost:',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                        Text(
                          '\$ $totalCost',
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              );
            }
          }),
          separatorBuilder: ((context, index) {
            return const Divider(
              height: 1.0,
              color: Colors.grey,
            );
          }),
          itemCount: currentUser.cart!.length + 1),
      bottomSheet: Expanded(
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, -1),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'CHECKOUT',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 26.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
