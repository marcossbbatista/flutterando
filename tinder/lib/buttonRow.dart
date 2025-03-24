import 'package:flutter/material.dart';

class buttonRow extends StatelessWidget {
  final String? logo;
  final String title;
  final double width;
  const buttonRow({
    super.key,
    required this.basicColor,
    this.logo,
    required this.title,
    required this.width,
  });

  final Color basicColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 64,
        decoration: BoxDecoration(
          color: basicColor,
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo!, width: width, fit: BoxFit.fitWidth),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
