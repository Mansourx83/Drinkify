import 'package:drinkify/models/drink_model.dart';
import 'package:flutter/material.dart';

class DetailsDrink extends StatefulWidget {
  const DetailsDrink({super.key});

  @override
  State<DetailsDrink> createState() => _DetailsDrinkState();
}

class _DetailsDrinkState extends State<DetailsDrink> {
  final PageController _controller = PageController();
  double _currantPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currantPage = _controller.page ?? 1;
      });
    });
  }

  final drinks = DrinkModel.drinks;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
