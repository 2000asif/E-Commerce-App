import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Container(

      height: 140.0,
      width: 100.0,
      child: ListView(

        scrollDirection: Axis.horizontal,
        children: [

          Category(
            image_location: 'images/boy_shirt.png',
              image_caption: 'boy shrit',
          ),
          Category(
            image_location: 'images/boy_tshirt.jpg',

              image_caption: 'T-shrit',

          ),
          Category(
            image_location: 'images/food_pizza.jpg',
              image_caption: 'Food',
          ),
          Category(
            image_location: 'images/gril_dress.jpg',
              image_caption: 'Dress',
          ),
          Category(
            image_location: 'images/gril_sh.jpg',
              image_caption: 'gril Shoes',
          ),
          Category(
            image_location: 'images/man_sh.jpg',
              image_caption: 'Man Shoes',
          ),
          Category(
            image_location: 'images/gril_dress.jpg',
              image_caption: 'Dress',
          ),
          Category(
            image_location: 'images/food_pizza.jpg',
              image_caption: 'Food',
          ),
          Category(
            image_location: 'images/man_sh.jpg',
              image_caption: 'Shoes',
          ),
       
        ],
      ),
    );


  }
}


class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    required this.image_location,
    required this.image_caption,
});



  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
         width: 100.0,
          height: 100,

          child: ListTile(

          title: Image.asset(image_location,
          height: 100.0,
          width:80.0,
          ),

            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption,style: TextStyle(fontSize: 11.0,color: Colors.black),
              ),

            ),

          ),
        ),
      ),
    );




  }
}


