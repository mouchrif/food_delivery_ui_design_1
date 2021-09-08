class Food {
  final String name;
  final String assetName;
  final List<double> prices;
  final int weight;
  final String tag;
  final int calorie;
  Food({
    required this.name,
    required this.assetName,
    required this.prices,
    required this.weight,
    required this.tag,
    required this.calorie,
  });

  static List<Food> foods = [
    Food(
      name: "Cheese Pancakes",
      assetName: "assets/images/cheese_pancake.jpg",
      prices: [4.89, 4.29],
      weight: 140,
      tag: "Sale",
      calorie: 320,
    ),
    Food(
      name: "Toast with ham",
      assetName: "assets/images/toast_ham.jpg",
      prices: [3.89, 3.28],
      weight: 120,
      tag: "New",
      calorie: 430,
    ),
    Food(
      name: "Cottage cheese pancake",
      assetName: "assets/images/cottage_cheese_pancake.jpg",
      prices: [3.89, 3.28],
      weight: 120,
      tag: "New",
      calorie: 430,
    ),
  ];
  static List<String> tabIcons = [
    "assets/images/tray.svg",
    "assets/images/open-book.svg",
    "assets/images/menu.svg",
  ];
  static List<Map<String, String>> foodCategories = [
    {"icon": "assets/images/pancake.svg", "name": "Breakfast"},
    {"icon": "assets/images/three-rolls.svg", "name": "Sets"},
    {"icon": "assets/images/sushi.svg", "name": "Sushi"},
    {"icon": "assets/images/salad.svg", "name": "Salads"},
    {"icon": "assets/images/pancake.svg", "name": "Breakfast"}
  ];
  static List<String> ingredients = [
    "Toast bread . ham",
    "mayonnaise . cheese",
    "ketchup . tomatoes",
    "fresh herbs . egg",
    "vegetable oil",
  ];
}
