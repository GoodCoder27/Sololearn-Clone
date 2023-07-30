import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final double iconHeight;
  final String iconText;
  final String iconPath;
  const MyIcon({
    super.key,
    required this.iconHeight,
    required this.iconText,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          height: iconHeight,
        ),
        Text(
          iconText,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
