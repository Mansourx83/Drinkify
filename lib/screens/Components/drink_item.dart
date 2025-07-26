import 'package:flutter/material.dart';

class DrinkItem extends StatelessWidget {
  const DrinkItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ///Container
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 30,
          ),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(24),
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 70,
                horizontal: 4,
              ),
              child: Row(),
            ),
          ),
        ),
    
        ///Image
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
    
              Image.asset(
                'assets/drinks/Chocolate.png',
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
    
        ///Texts
        Positioned(
          top: 70,
          bottom: 0,
          right: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'data',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'descasdasdasdasd',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
    
        ///Arrow
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
