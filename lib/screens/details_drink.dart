import 'package:drinkify/Components/qty.dart';
import 'package:drinkify/Components/toggle_widget.dart';
import 'package:drinkify/models/drink_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailsDrink extends StatefulWidget {
  const DetailsDrink({super.key});

  @override
  State<DetailsDrink> createState() => _DetailsDrinkState();
}

class _DetailsDrinkState extends State<DetailsDrink> {
  int selectedIndex = 0;

  // PageController for animated page transitions
  final PageController _controller = PageController(viewportFraction: 0.5);
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page ?? 1;
      });
    });
  }

  final drinks = DrinkModel.drinks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Top Bar
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      drinks[_currentPage.round()].title,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      drinks[_currentPage.round()].description,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  "€ ${drinks[_currentPage.round()].price.toString()}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // Drink Carousel
          PageView.builder(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemCount: drinks.length,
            itemBuilder: (context, index) {
              final scale =
                  1 - (_currentPage - index).abs() * 0.5; // Adjust scale effect
              final translate =
                  (_currentPage - index).abs() *
                  400; // Adjust translation effect
              return Transform.translate(
                offset: Offset(translate, 0),
                child: Transform.scale(
                  scale: scale.clamp(
                    0.5,
                    1,
                  ), // Restrict scale between 0.5 and 1
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          // Shadow Effect for Drink Image
                          Positioned(
                            bottom: 160,
                            right: 0,
                            left: 0,
                            child: Image.asset(
                              "assets/drinks/Ellipse 2.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          // Drink Image
                          Image.asset(
                            drinks[index].imagePath,
                            height: 700,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

          // Bottom Action Area
          Positioned(
            bottom: 40,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // List of icons (Shopping Cart)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(3, (index) {
                      String label;
                      double iconSize;

                      if (index == 0) {
                        label = "Small"; // Small
                        iconSize = 17.0; // الحجم الصغير
                      } else if (index == 1) {
                        label = "Medium"; // Medium
                        iconSize = 25.0; // الحجم المتوسط
                      } else {
                        label = "Large"; // Large
                        iconSize = 35.0; // الحجم الكبير
                      }

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black26),
                            color: selectedIndex == index
                                ? Colors.amber
                                : Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.coffee,
                                size: iconSize,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              Text(
                                label,
                                style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),

                  Gap(20),
                  // Quantity and Toggle Switch
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: DrinkToggle()),
                      Gap(8),
                      Expanded(child: QuantitySelector()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
