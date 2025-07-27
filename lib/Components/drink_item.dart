import 'package:drinkify/models/drink_model.dart';
import 'package:flutter/material.dart';


class DrinkItem extends StatelessWidget {
  final DrinkModel drink;  

  const DrinkItem({super.key, required this.drink}); 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Container
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 4),
              child: Row(),
            ),
          ),
        ),

        /// Image
        Positioned(
          top: -10,
          left: 20,
          bottom: 50,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 70,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade900,
                      blurRadius: 30,
                      spreadRadius: 2,
                    ),
                  ],
                ),
              ),
              Image.asset(drink.imagePath, fit: BoxFit.contain),  // نعرض الصورة المرسلة
            ],
          ),
        ),

        /// Texts
        Positioned(
          top: 70,
          bottom: 0,
          right: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                drink.title,  // نعرض العنوان المرسل
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                drink.description,  // نعرض الوصف المرسل
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                '\$${drink.price.toStringAsFixed(2)}',  // نعرض السعر المرسل
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        /// Arrow
        Positioned(
          top: 70,
          bottom: 0,
          right: 40,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black26),
            ),
            child: Icon(Icons.arrow_right, color: Colors.black45),
          ),
        ),
      ],
    );
  }
}
