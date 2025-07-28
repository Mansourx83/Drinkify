import 'package:drinkify/Components/drink_item.dart';
import 'package:drinkify/models/drink_model.dart';
import 'package:drinkify/screens/details_drink.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ////Drink
            Expanded(
              child: ListView.builder(
                controller: controller,
                itemCount: DrinkModel.drinks.length,
                itemBuilder: (context, index) {
                  final drink = DrinkModel.drinks[index];
                  return AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) {
                      double offset = 0;
                      if (controller.hasClients) {
                        offset = controller.offset / 120 - index;
                      }
                      offset = offset.clamp(0, 2);
                      return Transform.scale(
                        scale: 1 - (offset * 0.2),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsDrink(),
                            ),
                          ),
                          child: DrinkItem(
                            image: drink.imagePath,
                            name: drink.title,
                            title: drink.description,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
