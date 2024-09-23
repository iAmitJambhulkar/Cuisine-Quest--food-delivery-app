import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_quantity_selector.dart';
import 'package:food_delivery_app/model/cart_items.dart';
import 'package:food_delivery_app/model/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItems  cartItems;
  const MyCartTile({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child)=>Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // food image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItems.food.imagePath,
                      height: 100,
                      width: 100,
                      )
                  ),
                  const SizedBox(width: 10,),
                  //name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // food name
                      Text(cartItems.food.name),
                      // food price
                      Text("Rs.${cartItems.food.price}",
                      style: TextStyle(color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // increment and decrement quantity
                  MyQuantitySelector(
                    quantity: cartItems.quantity, 
                    food: cartItems.food, 
                    onIncrement: (){
                      restaurant.addToCart(cartItems.food, cartItems.selectedAddons);
                    }, 
                    onDecrement: (){
                      restaurant.removeFromCart(cartItems);
                    })
                ],
              ),
            ),
            //addons
            SizedBox(
              height: cartItems.selectedAddons.isEmpty ? 0: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                children: cartItems.selectedAddons
                .map((addons)=>
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FilterChip(label: Row(
                    children: [
                      //addons name
                      Text(addons.name),
                      // addons price
                      Text("Rs."+addons.price.toString(),
                      ),
                    ],
                  ), 
                  shape: StadiumBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.primary
                    ),
                  ),
                  onSelected: (value){},
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  labelStyle: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 12),
                            
                  ),
                )).toList(),
              ),
            ),
          ],
        ),
      ));
  }
}