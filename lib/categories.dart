import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shopapp/widgets/CustomStyles.dart';
import 'HomePage.dart';
import 'package:shopapp/widgets/extensions.dart ';

var categories = [
  {
    "name": "Office & Computer",
  },
  {
    "name": "jhiljmk",
  },
  {
    "name": "Office & Computer",
  },
  {
    "name": "Office & Computer",
  },
];

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Color(0xff5ac18e),
            title: Text(
                'Categories',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22

              ),
            ),
        ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: Row(
              children: [

              Container(
                color: Color(0x775ac18e),
                width: MediaQuery.of(context).size.width * 0.4,
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.6,
              ),
            ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListView.builder(
                itemBuilder: (context, index) => Padding
                  (padding: const EdgeInsets.symmetric(vertical: 8),
                  child: RoundCategoryItem(
                    onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new HomePage())) ,
                    text: 'categories[1]',
                  ),
                ),
                itemCount: categories.length,
            ),
          ),
        ],
      ),
    );
  }
}

class RoundCategoryItem extends StatelessWidget {
  const RoundCategoryItem({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration: CustomStyles.shadowContainer(context).copyWith(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        height: 80,
        decoration:  CustomStyles.shadowContainer(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.laptop_chromebook_rounded,
                size: 50,
              ),
              Text(
                  text.capitalize(),
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 28,
                ),
              ),
              Container(
                padding: EdgeInsets.all(6),
                decoration: CustomStyles.shadowContainer(context).copyWith(borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  Icons.arrow_forward_ios,
                color: Color(0xff5ac18e),
                  size: 25,

              ),
              ),
            ],
          ),
      ),
    );
  }
}
