import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'package:shopapp/Profile.dart';
import 'package:shopapp/categories.dart';
import 'package:shopapp/Addclients.dart';
import 'package:shopapp/Additems.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Home Page"),

        backgroundColor: Color(0x665ac18e),

      ),
      backgroundColor: Color(0xff5ac18e),
      body: Container(

        padding: EdgeInsets.all(0),
        child: GridView.count(
            crossAxisCount:2,
          children: <Widget>[

            Card(
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new Profile())) ,
                splashColor: Color(0x665ac18e),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.person_pin, size: 100,),
                      Text("Profil", style: new TextStyle(fontSize: 20),)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new Addclients())),
                splashColor: Color(0x665ac18e),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.person_add_alt_1_outlined, size: 100,),
                      Text("Add CLient", style: new TextStyle(fontSize: 20),)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new Categories())) ,
                splashColor: Color(0x665ac18e),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.category_outlined, size: 100,),
                      Text("Categories", style: new TextStyle(fontSize: 20),)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: (){},
                splashColor: Color(0x665ac18e),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.shopping_cart_outlined, size: 100,),
                      Text("My Commands", style: new TextStyle(fontSize: 20),)
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new Additems())),
                splashColor: Color(0x665ac18e),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.add_shopping_cart_outlined, size: 100,),
                      Text("Add Item", style: new TextStyle(fontSize: 20),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}