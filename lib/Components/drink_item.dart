import 'package:flutter/material.dart';

class DrinkItem extends StatelessWidget {
  const DrinkItem({
    super.key,
    required this.image,
    required this.name,
    required this.title,
  });
  final String image;
  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 3),
              child: Row(),
            ),
          ),
        ),
        Positioned(
          top: -15,
          left: 20,
          bottom: 43,
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
                      blurRadius: 30,
                      spreadRadius: 2,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              Image.asset(image, fit: BoxFit.contain),
            ],
          ),
        ),
        Positioned(
          top: 70,
          bottom: 0,
          right: 70,
          left: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
              ),
            ],
          ),
        ),
        Positioned(
          right: 50,
          bottom: 50,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black),
            ),
            child: Icon(
              Icons.arrow_forward_sharp,
              color: Colors.black54,
              size: 15,
            ),
          ),
        ),
      ],
    );
  }
}
