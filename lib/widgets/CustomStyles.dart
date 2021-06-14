import 'package:flutter/material.dart';

class CustomStyles{
  static BoxDecoration shadowContainer(
      BuildContext context,
  {double borderRadius = 10}) =>
      BoxDecoration(
        color: Colors.white,
        borderRadius: 
          borderRadius != 0 ? BorderRadius.circular(borderRadius) : null,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      );
}