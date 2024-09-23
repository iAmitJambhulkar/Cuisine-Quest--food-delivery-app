import 'package:food_delivery_app/model/restaurant.dart';

class CartItems {
  Food food;
  List<Addons> selectedAddons;
  int quantity;

  CartItems({
    required this.food,
    required this.selectedAddons,
    this.quantity = 1,
  });

  double get totalPrice{
    double addonPrice = selectedAddons.fold(0, (sum, addons) => sum + addons.price);
    return (food.price + addonPrice) * quantity;
  }
}