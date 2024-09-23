// ignore_for_file: constant_identifier_names

class Foods {
  final String name;
  final String description;
  final String imagePath;
  final String price;
  final FoodCategory category;

  List<Addons> availableAddons;

  Foods({
    required this.name, 
    required this.description, 
    required this.imagePath, 
    required this.price,
    required this.availableAddons,
    required this.category,
    });
}

enum FoodCategory{
  Burgers, 
  Salads,
  Drinks,
  Desserts,
  Sides,
}

class Addons{
  String name;
  double price;

  Addons({
    required this.name, 
    required this.price});

}