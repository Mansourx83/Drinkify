import 'package:drinkify/Components/drink_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Gap(100),
            ////Drink
            DrinkItem(),
          ],
        ),
      ),
    );
  }
}
