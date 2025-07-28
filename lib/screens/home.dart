import 'package:drinkify/Components/drink_item.dart';
import 'package:drinkify/models/drink_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                itemCount: DrinkModel.drinks.length,
                itemBuilder: (context, index) {
                  final drink = DrinkModel.drinks[index];
                  return DrinkItem(
                    image: drink.imagePath,
                    name: drink.title,
                    title: drink.description,
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
