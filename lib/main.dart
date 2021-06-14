import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'HomePage.dart';
import 'Profile.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Login UI',
debugShowCheckedModeBanner: false,
home: LoginScreen(),
);
}
}

//class MyApp extends StatelessWidget {

//@override
//Widget build(BuildContext context) {
//return MaterialApp(
// title: 'Flutter Home Page',
// home: HomePage(),
// debugShowCheckedModeBanner: false,
//   );
// }
//}

//class MyApp extends StatelessWidget {
//@override
//Widget build(BuildContext context) {
//return MaterialApp(
// home: Profile(),
//  debugShowCheckedModeBanner: false,
// );
//}
//}

