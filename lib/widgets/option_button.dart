import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String option;
  final bool isSelected;
  final bool isCorrect;
  final VoidCallback onTap;
  final Color selectedOptionColor; // Add this property

  const OptionButton({
    super.key,
    required this.option,
    required this.isSelected,
    required this.isCorrect,
    required this.onTap,
    required this.selectedOptionColor, // Add this property
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? selectedOptionColor : Colors.blueAccent, // Use selectedOptionColor
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          option,
          style: const TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
