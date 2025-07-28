class DrinkModel {
  final String imagePath;
  final String title;
  final String description;
  final double price;

  DrinkModel({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
  });

  static List<DrinkModel> drinks = [
    DrinkModel(
      imagePath: 'assets/drinks/Banana.png',
      title: 'Banana',
      description: 'Creamy banana with fruity flavor.',
      price: 5.99,
    ),
    DrinkModel(
      imagePath: 'assets/drinks/Brownie Island.png',
      title: 'Brownie Island',
      description: 'Chocolatey drink with island flavors.',
      price: 7.49,
    ),

    DrinkModel(
      imagePath: 'assets/drinks/Strawberry.png',
      title: 'Strawberry',
      description: 'Refreshing strawberry drink.',
      price: 5.40,
    ),

    DrinkModel(
      imagePath: 'assets/drinks/Peanut Butter.png',
      title: 'Peanut Butter',
      description: 'Creamy peanut butter with a hint of salt.',
      price: 6.30,
    ),
    DrinkModel(
      imagePath: 'assets/drinks/Salted Caramel.png',
      title: 'Salted Caramel',
      description: 'Sweet and salty caramel drink.',
      price: 6.99,
    ),
    DrinkModel(
      imagePath: 'assets/drinks/Brownie Island.png',
      title: 'Brownie Island',
      description: 'Chocolatey drink with island flavors.',
      price: 7.49,
    ),
    DrinkModel(
      imagePath: 'assets/drinks/Banana.png',
      title: 'Banana',
      description: 'Creamy banana with fruity flavor.',
      price: 5.99,
    ),
  ];
}
