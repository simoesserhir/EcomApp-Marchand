import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/widgets/info_card.dart';

const email = "esserhir.mohamed@gmail.com";
const phone = "+(212) 6 79 50 48 59";
const location= "daoudiat une 2";
const firstName = "ESSERHIR";
const lastName = "SIMO";
const username = "SIMO.ESS";


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              child: Icon(Icons.account_circle, size: 100),
              radius: 50,
            ),
            Text(
              "Seller Profile ",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.white
              ),
            ),
            InfoCard(text: firstName, IconData: Icons.person_pin_circle, onPressed: (){}),
            InfoCard(text: lastName, IconData: Icons.person_pin_circle, onPressed: (){}),
            InfoCard(text: email, IconData: Icons.email, onPressed: (){}),
            InfoCard(text: username, IconData: Icons.account_circle_rounded, onPressed: (){}),
            InfoCard(text: location, IconData: Icons.location_on, onPressed: (){}),
            InfoCard(text: phone, IconData: Icons.phone, onPressed: (){}),


          ],
        ),
      ),
    );
  }
}
