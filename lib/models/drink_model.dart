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
      description:
          'A creamy and sweet banana drink, packed with the natural goodness of ripe bananas. Perfect for those who love a smooth, fruity flavor.',
      price: 5.99,
    ),
    DrinkModel(
      imagePath: 'assets/drinks/Brownie Island.png',
      title: 'Brownie Island',
      description:
          'Rich and indulgent, this drink combines the chocolatey goodness of brownies with a hint of island flavors. A delightful treat for dessert lovers.',
      price: 7.49,
    ),
    DrinkModel(
      imagePath: 'assets/drinks/burger.png',
      title: 'Burger',
      description:
          'A savory drink inspired by the classic burger! With smoky flavors and a unique twist, this drink is perfect for those craving something different.',
      price: 6.80,
    ),
    DrinkModel(
      imagePath: 'assets/drinks/carmel.png',
      title: 'Caramel',
      description:
          'Sweet caramel drink with a rich, smooth texture. A perfect blend of caramelized sugar and cream, perfect for those with a sweet tooth.',
      price: 6.20,
    ),
    DrinkModel(
      imagePath: 'assets/drinks/chicken.png',
      title: 'Chicken',
      description:
          'A unique, savory chicken-flavored drink, bringing together herbs and spices with a savory base. Ideal for the adventurous drinker!',
      price: 4.99,
    ),
    DrinkModel(
      imagePath: 'assets/drinks/Chocolate.png',
      title: 'Chocolate',
      description:
          'A rich, decadent chocolate drink with layers of smooth cocoa flavor. Ideal for chocolate lovers who want to indulge in a luxurious treat.',
      price: 6.50,
    ),

    DrinkModel(
      imagePath: 'assets/drinks/Peanut Butter.png',
      title: 'Peanut Butter',
      description:
          'Rich and nutty, the perfect peanut butter drink for peanut lovers. A smooth, indulgent treat that combines creaminess with a hint of salt.',
      price: 6.30,
    ),
    DrinkModel(
      imagePath: 'assets/drinks/Salted Caramel.png',
      title: 'Salted Caramel',
      description:
          'A sweet and salty delight! The perfect blend of caramel with a pinch of sea salt for that irresistible sweet-salty combination.',
      price: 6.99,
    ),
    DrinkModel(
      imagePath: 'assets/drinks/Strawberry.png',
      title: 'Strawberry',
      description:
          'A refreshing and tangy strawberry drink that’s perfectly sweetened. Perfect for a hot summer day or as a light snack.',
      price: 5.40,
    ),
  ];
}
