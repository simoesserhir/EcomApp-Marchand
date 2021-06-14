import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String text;
  final IconData;
  Function onPressed;


  InfoCard({required this.text, required this.IconData, required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed(),
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            IconData,
            color: Colors.blueAccent,
          ),
          title: Text(
            text,
            style: TextStyle(
              color: Colors.blueAccent,
              fontFamily: "Source Sans Pro"
            ),
          ),
        ),
      ),
    );
  }
}
