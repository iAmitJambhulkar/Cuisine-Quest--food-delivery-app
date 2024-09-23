import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_cart_tile.dart';
import 'package:food_delivery_app/model/restaurant.dart';
import 'package:food_delivery_app/pages/payment_page.dart';
import 'package:provider/provider.dart';
import 'package:food_delivery_app/components/my_buttons.dart'; // Import MyButtons

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.cart;

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text('Cart'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear cart button only if the cart is not empty
              if (userCart.isNotEmpty)
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Are you sure you want to clear the cart?'),
                        actions: [
                          // cancel button
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cancel'),
                          ),
                          // yes button
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              restaurant.clearCart();
                            },
                            child: const Text('Yes'),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.delete),
                ),
            ],
          ),
          body: userCart.isEmpty
              ? const Center(child: Text('Your cart is empty'))
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          // get individual cart items
                          final cartItems = userCart[index];

                          // return cart tile UI
                          return MyCartTile(cartItems: cartItems);
                        },
                      ),
                    ),
                    // Only show 'Go To Checkout' button if the cart is not empty
                    if (userCart.isNotEmpty)
                      MyButtons(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentPage())),
                        text: 'Go To Checkout',
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                  ],
                ),
        );
      },
    );
  }
}
