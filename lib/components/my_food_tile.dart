import 'package:flutter/material.dart';
import '../model/restaurant.dart'; // Ensure this points to your Food model

class MyFoodTile extends StatelessWidget {
  final Food food; // Change from Foods to Food
  final void Function()? onTap;

  const MyFoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                // Text food details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                    children: [
                      Text(food.name), // Changed from foods to food
                      Text('Rs.${food.price.toString()}', 
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary
                      ),),
                      const SizedBox(height: 10,),
                      Text(food.description,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary
                      ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15,),
                // Food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(food.imagePath, height: 120,)), // Changed from foods to food
              ],
            ),
          ),
        ),
         Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
         )
      ],
    );
  }
}
