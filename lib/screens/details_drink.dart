import 'package:drinkify/models/drink_model.dart';
import 'package:flutter/material.dart';

class DetailsDrink extends StatefulWidget {
  const DetailsDrink({super.key});

  @override
  State<DetailsDrink> createState() => _DetailsDrinkState();
}

class _DetailsDrinkState extends State<DetailsDrink> {
  final PageController _controller = PageController(viewportFraction: 0.50);
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
    return Scaffold(
      body: Stack(
        children: [
          //Bar
          Positioned(
            top: 80,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      drinks[_currantPage.round()].title,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      drinks[_currantPage.round()].description,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  "€ ${drinks[_currantPage.round()].price.toString()}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          //Drink
          PageView.builder(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemCount: drinks.length,
            itemBuilder: (context, index) {
              final scale = 1 - (_currantPage - index).abs() * 1;
              final translate = (_currantPage - index).abs() * 400;
              return Transform.translate(
                offset: Offset(translate, 0),
                child: Transform.scale(
                  scale: scale.clamp(0.5, 1),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ///Drink
                          Image.asset(
                            drinks[index].imagePath,
                            height: 800,
                            fit: BoxFit.contain,
                          ),

                          ///Shadow
                          Positioned(
                            bottom: 200,
                            left: 0,
                            right: 0,
                            child: Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 60,
                                    spreadRadius: 10,
                                    color: Colors.black38,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
