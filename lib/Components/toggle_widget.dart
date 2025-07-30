import 'package:flutter/material.dart';

/// toggle
class DrinkToggle extends StatefulWidget {
  @override
  _DrinkToggleState createState() => _DrinkToggleState();
}

class _DrinkToggleState extends State<DrinkToggle> {
  bool isIced = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          _buildToggleOption("Hot", !isIced),
          _buildToggleOption("Iced", isIced),
        ],
      ),
    );
  }

  Widget _buildToggleOption(String label, bool selected) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isIced = label == "Iced";
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          curve: Curves.linear,
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: selected ? Colors.white : Colors.grey[300],
            borderRadius: BorderRadius.circular(40),
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

