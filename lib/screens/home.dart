import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ////Drink
              Stack(
                children: [
                  Card(
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
                  Positioned(
                    top: -10,
                    left: 20,
                    bottom: 50,
                    child: Image.asset('assets/drinks/Chocolate.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
