import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/cart_items.dart';
import 'package:intl/intl.dart';

class Addons {
  final String name;
  final double price; // Changed to double

  Addons({required this.name, required this.price});
}


enum FoodCategory { burgers, salads, drinks, desserts, sides }

extension FoodCategoryExtension on FoodCategory {
  String get name => toString().split('.').last;
}


class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final List<Addons> availableAddons; // Nullable list
  final FoodCategory category;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    List<Addons>? availableAddons, // Nullable
    required this.category,
  }) : availableAddons = availableAddons ?? []; // Default to empty list
}




class Restaurant extends ChangeNotifier{
  final List<Food> _menu =[
    //Burger
    Food(
      name: "Bacon Burger", 
      description: 'A beef burger topped with crispy bacon strips and cheddar cheese.', 
      imagePath: 'lib/images/Burger/Bacon Burger.png', 
      price: 199, 
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 20),
        Addons(name: 'Extra Bacon', price: 30),
        Addons(name: 'Extra Beef Patty', price: 50),
      ], 
      category: FoodCategory.burgers
    ),
    Food(
      name: "BBQ Burger", 
      description: 'A beef patty with barbecue sauce, caramelized onions, and crispy bacon.', 
      imagePath: 'lib/images/Burger/BBQ Burger.png', 
      price:  149, 
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 20),
        Addons(name: 'Extra BBQ Sauce', price: 30),
        Addons(name: 'Extra Beef Patty', price: 50),
      ], 
      category: FoodCategory.burgers
    ),
    Food(
      name: "Cheese Burger", 
      description: 'A burger topped with melted cheese, usually cheddar, over a beef patty.', 
      imagePath: 'lib/images/Burger/Cheeseburger.png', 
      price: 169, 
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 20),
        Addons(name: 'Extra Cheddar', price: 30),
        Addons(name: 'Extra Beef Patty', price: 50),
      ], 
      category: FoodCategory.burgers
    ),
    Food(
      name: "Chicken Burger", 
      description: ' A grilled or fried chicken fillet served with lettuce, mayo, and sometimes pickles.', 
      imagePath: 'lib/images/Burger/Chicken Burger.png', 
      price: 209, 
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 20),
        Addons(name: 'Extra Chicekn Patty', price: 30),
        Addons(name: 'Extra Mayo and Pickles', price: 60),
      ], 
      category: FoodCategory.burgers
    ),
    Food(
      name: "Classic Beef Burger", 
      description: 'A traditional burger with a juicy beef patty, lettuce, tomato, cheese, and onions in a sesame seed bun.', 
      imagePath: 'lib/images/Burger/Classic Beef Burger.png', 
      price: 109, 
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 20),
        Addons(name: 'Extra Tomato and Onions', price: 30),
        Addons(name: 'Extra Beef Patty', price: 50),
      ], 
      category: FoodCategory.burgers
    ),
    Food(
      name: "Double Decker Burger", 
      description: 'Two beef patties stacked with layers of cheese, lettuce, and tomato.', 
      imagePath: 'lib/images/Burger/Double Decker Burger.png', 
      price: 299, 
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 20),
        Addons(name: 'Extra Tomato and Onions', price: 30),
        Addons(name: 'Extra Lettuce', price: 50),
      ], 
      category: FoodCategory.burgers
    ),
    Food(
      name: "Fish Burger", 
      description: 'A breaded or grilled fish fillet with tartar sauce and lettuce in a soft bun.', 
      imagePath: 'lib/images/Burger/Fish Burger.png', 
      price: 239, 
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 20),
        Addons(name: 'Extra Grilled Fish', price: 30),
        Addons(name: 'Extra Tartar Sauce', price: 50),
      ], 
      category: FoodCategory.burgers
    ),
    Food(
      name: "Mushroom Swiss Burger", 
      description: 'A beef patty with sautéed mushrooms and Swiss cheese.', 
      imagePath: 'lib/images/Burger/Mushroom Swiss Burger.png', 
      price: 249, 
      availableAddons: [
        Addons(name: 'Extra Swiss Cheese', price: 20),
        Addons(name: 'Extra Onions', price: 30),
        Addons(name: 'Extra Mushroom', price: 50),
      ], 
      category: FoodCategory.burgers
    ),
    Food(
      name: "Turkey Burger", 
      description: 'A healthier option with a lean turkey patty, cranberry sauce, and fresh spinach.', 
      imagePath: 'lib/images/Burger/Turkey Burger.png', 
      price: 99, 
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 20),
        Addons(name: 'Extra Suace', price: 30),
        Addons(name: 'Extra Patty', price: 50),
      ], 
      category: FoodCategory.burgers
    ),
    Food(
      name: "Veggie Burger", 
      description: 'A patty made from vegetables, grains, or legumes, often topped with lettuce, tomato, and vegan mayo.', 
      imagePath: 'lib/images/Burger/Veggie Burger.png', 
      price: 89, 
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 20),
        Addons(name: 'Extra Veggies', price: 40),
        Addons(name: 'Extra Vegan Mayo', price: 30),
      ], 
      category: FoodCategory.burgers
    ),
    // Salads
    Food(
      name: "Asian Chicken Salad", 
      description: 'Grilled chicken, cabbage, carrots, mandarin oranges, and a sesame ginger dressing.', 
      imagePath: 'lib/images/Salads/Asian Chicken Salad.png', 
      price: 299, 
      availableAddons: [
        Addons(name: 'Extra Chicken', price: 50),
        Addons(name: 'Extra Veggies', price: 40),
        Addons(name: 'Extra Oranges', price: 30),
      ], 
      category: FoodCategory.salads
    ),
    Food(
      name: "Cesar Salad", 
      description: 'Romaine lettuce, croutons, Parmesan cheese, and Caesar dressing.', 
      imagePath: 'lib/images/Salads/Caesar Salad.png', 
      price: 199, 
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 50),
        Addons(name: 'Extra Cesar', price: 40),
        Addons(name: 'Extra lettuce', price: 30),
      ], 
      category: FoodCategory.salads
    ),
    Food(
      name: "Cobb Salad", 
      description: 'A mix of lettuce, avocado, bacon, chicken, boiled eggs, tomatoes, and blue cheese dressing.', 
      imagePath: 'lib/images/Salads/Cobb Salad.png', 
      price: 499, 
      availableAddons: [
        Addons(name: 'Extra Avocado', price: 50),
        Addons(name: 'Extra Bacon', price: 40),
        Addons(name: 'Extra Eggs and Chicken', price: 80),
      ], 
      category: FoodCategory.salads
    ),
    Food(
      name: "Caprese Salad", 
      description: 'Sliced tomatoes, fresh mozzarella, basil, and balsamic vinegar.', 
      imagePath: 'lib/images/Salads/Caprese Salad.png', 
      price: 109, 
      availableAddons: [
        Addons(name: 'Extra tomatoes', price: 20),
        Addons(name: 'Extra Mozzarella', price: 50),
        Addons(name: 'Extra Basil', price: 10),
      ], 
      category: FoodCategory.salads
    ),
    Food(
      name: "Fruit Salad", 
      description: 'A refreshing mix of seasonal fruits like berries, melons, grapes, and apples.', 
      imagePath: 'lib/images/Salads/Fruit Salad.png', 
      price: 149, 
      availableAddons: [
        Addons(name: 'Extra Fruits', price: 60),
        Addons(name: 'Extra Spices', price: 20),
      ], 
      category: FoodCategory.salads
    ),
    Food(
      name: "Greek Salad", 
      description: 'Cucumbers, tomatoes, red onion, feta cheese, olives, and olive oil.', 
      imagePath: 'lib/images/Salads/Greek Salad.png', 
      price: 219, 
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 50),
        Addons(name: 'Extra Veggies', price: 40),
      ], 
      category: FoodCategory.salads
    ),
    Food(
      name: "Panzanella Salad", 
      description: 'Italian bread, tomatoes, cucumber, and onions, tossed with olive oil and vinegar.', 
      imagePath: 'lib/images/Salads/Panzanella Salad.png', 
      price: 189, 
      availableAddons: [
        Addons(name: 'Extra Bread', price: 50),
        Addons(name: 'Extra Veggies', price: 40),
      ], 
      category: FoodCategory.salads
    ),
    Food(
      name: "Spinach Salad", 
      description: 'Fresh spinach leaves with red onions, bacon, and boiled eggs, topped with vinaigrette.', 
      imagePath: 'lib/images/Salads/Spinach Salad.png', 
      price: 139, 
      availableAddons: [
        Addons(name: 'Extra Bacons', price: 50),
        Addons(name: 'Extra Eggs', price: 40),
        Addons(name: 'Extra Veggies', price: 30),
      ], 
      category: FoodCategory.salads
    ),
    Food(
      name: "Taco Salad", 
      description: ' Loaded with meat, veggies, and a fair amount of cheese, it is got all the right things to make for an extra-satisfying weeknight dinner.', 
      imagePath: 'lib/images/Salads/Taco Salad.png', 
      price: 139, 
      availableAddons: [
        Addons(name: 'Extra Chicken', price: 50),
        Addons(name: 'Extra Cheese', price: 30),
        Addons(name: 'Extra Veggies', price: 40),
      ], 
      category: FoodCategory.salads
    ),
    Food(
      name: "Quinoa Salad", 
      description: 'Quinoa mixed with cucumbers, cherry tomatoes, onions, and feta cheese.', 
      imagePath: 'lib/images/Salads/Quinoa Salad.png', 
      price: 299, 
      availableAddons: [
        Addons(name: 'Extra Cheese', price: 30),
        Addons(name: 'Extra Veggies', price: 40),
      ], 
      category: FoodCategory.salads
    ),
    // Drinks
    Food(
      name: "Cappuccino", 
      description: 'A classic espresso-based coffee with steamed milk and foam.', 
      imagePath: 'lib/images/Drinks/Cappuccino.png', 
      price: 139, 
      availableAddons: [
        Addons(name: 'Extra Solid', price: 20),
        Addons(name: 'Extra Sugar', price: 30),
      ], 
      category: FoodCategory.drinks
    ),
    Food(
      name: "Green Juice", 
      description: 'A healthy drink made from blended leafy greens, cucumber, apple, and lemon.', 
      imagePath: 'lib/images/Drinks/Green Juice.png', 
      price: 149, 
      availableAddons: [
        Addons(name: 'Extra Green Leafs', price: 20),
        Addons(name: 'Extra Fruits', price: 30),
      ], 
      category: FoodCategory.drinks
    ),
    Food(
      name: "Iced Tea", 
      description: 'Chilled tea, often sweetened and flavored with lemon or peach.', 
      imagePath: 'lib/images/Drinks/Iced Tea.png', 
      price: 99, 
      availableAddons: [
        Addons(name: 'Extra Ice', price: 20),
        Addons(name: 'Extra Tea', price: 40),
      ], 
      category: FoodCategory.drinks
    ),
    Food(
      name: "Lemonade", 
      description: 'A refreshing drink made from lemon juice, water, and sugar.', 
      imagePath: 'lib/images/Drinks/Lemonade.png', 
      price: 129, 
      availableAddons: [
        Addons(name: 'Extra Lemon', price: 20),
        Addons(name: 'Extra Sugar', price: 30),
      ], 
      category: FoodCategory.drinks
    ),
    Food(
      name: "Margarrita", 
      description: 'A cocktail made with tequila, lime juice, and triple sec, often served with a salted rim.', 
      imagePath: 'lib/images/Drinks/Margarita.png', 
      price: 279, 
      availableAddons: [
        Addons(name: 'Extra Lime', price: 20),
        Addons(name: 'Extra Tequila', price: 80),
      ], 
      category: FoodCategory.drinks
    ),
    Food(
      name: "Milkshake", 
      description: 'A thick, creamy drink made by blending milk, ice cream, and flavorings like chocolate or vanilla.', 
      imagePath: 'lib/images/Drinks/Milkshake.png', 
      price: 189, 
      availableAddons: [
        Addons(name: 'Extra Ice-Cream', price: 40),
        Addons(name: 'Extra Chocolate and Vanilla', price: 60),
      ], 
      category: FoodCategory.drinks
    ),
    Food(
      name: "Mojito", 
      description: 'A Cuban cocktail made with rum, mint, lime, sugar, and soda water.', 
      imagePath: 'lib/images/Drinks/Mojito.png', 
      price: 169, 
      availableAddons: [
        Addons(name: 'Extra Rum', price: 70),
        Addons(name: 'Extra Soda', price: 40),
      ], 
      category: FoodCategory.drinks
    ),
    Food(
      name: "Orange Juice", 
      description: 'Freshly squeezed or store-bought juice made from oranges.', 
      imagePath: 'lib/images/Drinks/Orange Juice.png', 
      price: 99, 
      availableAddons: [
        Addons(name: 'Extra Oranges', price: 40),
      ], 
      category: FoodCategory.drinks
    ),
    Food(
      name: "Sangria", 
      description: 'A Spanish punch made with red wine, chopped fruit, and sometimes brandy or orange juice.', 
      imagePath: 'lib/images/Drinks/Sangria.png', 
      price: 199, 
      availableAddons: [
        Addons(name: 'Extra Red Wine', price: 70),
        Addons(name: 'Extra Fruits', price: 40),
      ], 
      category: FoodCategory.drinks
    ),
    Food(
      name: "Smoothie", 
      description: 'A blended drink made from fruit, yogurt, and sometimes vegetables like spinach or kale.', 
      imagePath: 'lib/images/Drinks/Smoothie.png', 
      price: 139, 
      availableAddons: [
        Addons(name: 'Extra Fruits', price: 20),
        Addons(name: 'Extra Veggies', price: 40),
        Addons(name: 'Extra Yogurt', price: 20),
      ], 
      category: FoodCategory.drinks
    ),
    // Desserts
    Food(
      name: "Apple Pie", 
      description: 'A classic pie filled with spiced apples and served with a flaky crust.', 
      imagePath: 'lib/images/Desserts/Apple Pie.png', 
      price: 239, 
      availableAddons: [
        Addons(name: 'Extra Apples', price: 40),
        Addons(name: 'Extra Spices', price: 20),
      ], 
      category: FoodCategory.desserts
    ),
    Food(
      name: "Banoffee Pie", 
      description: 'A British dessert made with bananas, caramel, and whipped cream on a biscuit base.', 
      imagePath: 'lib/images/Desserts/Banoffee Pie.png', 
      price: 269, 
      availableAddons: [
        Addons(name: 'Extra Bananas', price: 40),
        Addons(name: 'Extra Cream-Biscuits', price: 60),
      ], 
      category: FoodCategory.desserts
    ),
    Food(
      name: "Brownies", 
      description: ' Dense, fudgy squares of chocolate goodness, sometimes with nuts or chocolate chips.', 
      imagePath: 'lib/images/Desserts/Brownies.png', 
      price: 199, 
      availableAddons: [
        Addons(name: 'Extra Chocolates chips', price: 60),
        Addons(name: 'Extra Nuts', price: 30),
      ], 
      category: FoodCategory.desserts
    ),
    Food(
      name: "Cheese Cake", 
      description: 'A creamy, baked dessert with a graham cracker crust, often topped with fruit or chocolate.', 
      imagePath: 'lib/images/Desserts/Cheesecake.png', 
      price: 329, 
      availableAddons: [
        Addons(name: 'Extra Chocolate', price: 40),
        Addons(name: 'Extra Fruits', price: 40),
      ], 
      category: FoodCategory.desserts
    ),
    Food(
      name: "Crème Brûlée", 
      description: 'A creamy custard with a caramelized sugar crust on top.', 
      imagePath: 'lib/images/Desserts/Crème Brûlée.png', 
      price: 259, 
      availableAddons: [
        Addons(name: 'Extra Creamy Custard', price: 50),
        Addons(name: 'Extra Sugar Crust', price: 30),
      ], 
      category: FoodCategory.desserts
    ),
    Food(
      name: "Ice Cream Sundae", 
      description: 'Scoops of ice cream topped with chocolate sauce, whipped cream, nuts, and a cherry.', 
      imagePath: 'lib/images/Desserts/Ice Cream Sundae.png', 
      price: 269, 
      availableAddons: [
        Addons(name: 'Extra Ice-Cream and Nuts', price: 60),
        Addons(name: 'Extra Cherry', price: 30),
      ], 
      category: FoodCategory.desserts
    ),
    Food(
      name: "Molten Lava Cake", 
      description: 'A warm chocolate cake with a gooey, melted chocolate center.', 
      imagePath: 'lib/images/Desserts/Molten Lava Cake.png', 
      price: 229, 
      availableAddons: [
        Addons(name: 'Extra Melted Chocolate', price: 40),
        Addons(name: 'Extra Spices', price: 20),
      ], 
      category: FoodCategory.desserts
    ),
    Food(
      name: "Chocolate Cake", 
      description: 'A rich and moist cake made with cocoa and topped with chocolate frosting.', 
      imagePath: 'lib/images/Desserts/Chocolate Cake.png', 
      price: 279, 
      availableAddons: [
        Addons(name: 'Extra Cocoa', price: 30),
        Addons(name: 'Extra Chocolate', price: 60),
      ], 
      category: FoodCategory.desserts
    ),
    Food(
      name: "Panna Cotta", 
      description: 'An Italian dessert of sweetened cream set with gelatin, often served with fruit sauce.', 
      imagePath: 'lib/images/Desserts/Panna Cotta.png', 
      price: 239, 
      availableAddons: [
        Addons(name: 'Extra Fruit Sauce', price: 40),
        Addons(name: 'Extra Cream', price: 40),
      ], 
      category: FoodCategory.desserts
    ),
    Food(
      name: "Tiramisu", 
      description: 'An Italian dessert made of layers of coffee-soaked ladyfingers, mascarpone cream, and cocoa powder.', 
      imagePath: 'lib/images/Desserts/Tiramisu.png', 
      price: 239, 
      availableAddons: [
        Addons(name: 'Extra Cocoa', price: 30),
        Addons(name: 'Extra Mascarpone Cream', price: 40),
      ], 
      category: FoodCategory.desserts
    ),

    //Sides
    Food(
        name: "Baked Beans", 
        description: 'Slow-cooked beans in a sweet and tangy tomato sauce.', 
        imagePath: 'lib/images/Sides/Baked Beans.png', 
        price: 119, 
        availableAddons: [
          Addons(name: 'Extra Beans', price: 40),
          Addons(name: 'Extra Tangy Tomato Sauce', price: 40),
        ], 
        category: FoodCategory.sides
    ),
    Food(
        name: "Brussels Sprouts", 
        description: 'Roasted Brussels sprouts with olive oil, salt, and pepper.', 
        imagePath: 'lib/images/Sides/Brussels Sprouts.png', 
        price: 139, 
        availableAddons: [
          Addons(name: 'Extra Brussels Sprouts', price: 40),
        ], 
        category: FoodCategory.sides
    ),
    Food(
        name: "French Fries", 
        description: 'Crispy, deep-fried potato strips, often served with ketchup or mayo.', 
        imagePath: 'lib/images/Sides/French Fries.png', 
        price: 109, 
        availableAddons: [
          Addons(name: 'Extra Mayo', price: 20),
          Addons(name: 'Extra Ketchup', price: 20),
        ], 
        category: FoodCategory.sides
    ),
    Food(
        name: "Garlic Bread", 
        description: 'Toasted bread slices topped with garlic butter and herbs.', 
        imagePath: 'lib/images/Sides/Garlic Bread.png', 
        price: 119, 
        availableAddons: [
          Addons(name: 'Extra Garlic Butter', price: 40),
        ], 
        category: FoodCategory.sides
    ),
    Food(
        name: "Grilled Asparagus", 
        description: 'Asparagus spears grilled with olive oil and seasoning.', 
        imagePath: 'lib/images/Sides/Grilled Asparagus.png', 
        price: 149, 
        availableAddons: [
          Addons(name: 'Extra Asparagus', price: 60),
        ], 
        category: FoodCategory.sides
    ),
    Food(
        name: "Macaroni and Cheese", 
        description: 'Elbow macaroni mixed with creamy cheese sauce.', 
        imagePath: 'lib/images/Sides/Macaroni and Cheese.png', 
        price: 169, 
        availableAddons: [
          Addons(name: 'Extra Macroni', price: 60),
          Addons(name: 'Extra Cheese', price: 20),
        ], 
        category: FoodCategory.sides
    ),
    Food(
        name: "Mashed Potatoes", 
        description: 'Creamy mashed potatoes with butter, salt, and sometimes garlic or cheese.', 
        imagePath: 'lib/images/Sides/Mashed Potatoes.png', 
        price: 159, 
        availableAddons: [
          Addons(name: 'Extra Butter', price: 40),
          Addons(name: 'Extra Cheese', price: 30),
        ], 
        category: FoodCategory.sides
    ),
    Food(
        name: "Onion Rings", 
        description: 'Battered and fried onion slices, crunchy and savory.', 
        imagePath: 'lib/images/Sides/Onion Rings.png', 
        price: 99, 
        availableAddons: [
          Addons(name: 'Extra Mayo', price: 40),
          Addons(name: 'Extra Ketchup', price: 40),
        ], 
        category: FoodCategory.sides
    ),
    Food(
        name: "Rice Pilaf", 
        description: 'Flavored rice cooked with broth and spices, often mixed with vegetables.', 
        imagePath: 'lib/images/Sides/Rice Pilaf.png', 
        price: 249, 
        availableAddons: [
          Addons(name: 'Extra Spices', price: 40),
          Addons(name: 'Extra Veggies', price: 40),
        ], 
        category: FoodCategory.sides
    ),
    Food(
      name: "Steamed Vegetables", 
      description: 'A mix of vegetables like broccoli, carrots, and green beans, simply steamed.', 
      imagePath: 'lib/images/Sides/Steamed Vegetables.png', 
      price: 269, 
      availableAddons: [
        Addons(name: 'Extra Veggies', price: 80),
      ], 
      category: FoodCategory.sides
  ),

  ];

  // Getters
  List<Food> get menu => _menu;
  List<CartItems>get cart => _cart;


  // Operations
  // user cart
  final List<CartItems> _cart = [];

 // Add to cart
  void addToCart(Food food, List<Addons> selectedAddons) {
    // Check if the item with the same food and addons already exists
    CartItems? cartItems = _cart.firstWhereOrNull((item) {
      // Compare food
      bool isSameFood = item.food == food;
      // Compare addons (list equality)
      bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    // If item already exists, increase its quantity
    if (cartItems != null) {
      cartItems.quantity++;
    } else {
      // Otherwise, add a new cart item
      _cart.add(CartItems(food: food, selectedAddons: selectedAddons));
    }

    notifyListeners();  // Notify UI of changes
  }

  // Remove from cart
  void removeFromCart(CartItems cartItems) {
    int cartIndex = _cart.indexOf(cartItems);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--; // Decrease quantity if more than one
      } else {
        _cart.removeAt(cartIndex); // Otherwise, remove the item
      }
    }

    notifyListeners();  // Notify UI of changes
  }

  // Get total price of the cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItems cartItems in _cart) {
      double itemTotal = cartItems.food.price;
      // Add addon prices
      for (Addons addon in cartItems.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItems.quantity; // Multiply by quantity
    }
    return total;
  }

 // Get total number of items in the cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItems cartItems in _cart) {
      totalItemCount += cartItems.quantity;  // Sum up the quantities
    }
    return totalItemCount;
  }

  // Clear the cart
  void clearCart() {
    _cart.clear();
    notifyListeners();  // Notify UI of changes
  }

  // Helpers
// generate a receipt 
String displayCardReceipt(){
  final receipt = StringBuffer();
  receipt.writeln("Here's your receipt.");
  receipt.writeln();

  String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  receipt.writeln(formattedDate);
  receipt.writeln("-----------------");

  for(final cartItems in _cart){
    receipt.writeln("${cartItems.quantity} x ${cartItems.food.name} - ${_formatPrice(cartItems.food.price)}");

    if(cartItems.selectedAddons.isNotEmpty){
      receipt.writeln("  Add-ons: ${_formatAddons(cartItems.selectedAddons)}"); // Corrected formatting here
    }
    receipt.writeln();
  }

  receipt.writeln("-----------------");
  receipt.writeln("Total Items: ${getTotalItemCount()}");
  receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

  return receipt.toString();
}

// format double value into money
String _formatPrice(double price){
  return "Rs.${price.toStringAsFixed(2)}";
}

// format list of addons into a string summary    
String _formatAddons(List<Addons> addons){
  return addons
    .map((addon) => "${addon.name} (${_formatPrice(addon.price)})") // Corrected map syntax
    .join(", ");
}

  
}

  


  




