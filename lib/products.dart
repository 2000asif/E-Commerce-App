import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techasif/product_details.dart';
class Products extends StatelessWidget {


  var product_list = [
    {
      "name": "Gril Dress",
      "picture": "images/Gril.jpg",
      "old_price": 120,
      "price":  110,
    },
    {
      "name": "Shoes ",
      "picture": "images/man_sh.jpg",
      "old_price": 110,
      "price":  95 ,
    },
    {
      "name": " Gril Shoes ",
      "picture": "images/gril_sh.jpg",
      "old_price": 95,
      "price":  70 ,
    },
{
      "name": " Gril Shoes ",
      "picture": "images/gril_sh.jpg",
      "old_price": 95,
      "price":  70 ,
    },
    {
      "name": " Gril Shoes ",
      "picture": "images/gril_sh.jpg",
      "old_price": 95,
      "price":  70 ,
    },
    {
      "name": " Gril Shoes ",
      "picture": "images/gril_sh.jpg",
      "old_price": 95,
      "price":  70 ,
    },
    {
      "name": " Gril Shoes ",
      "picture": "images/gril_sh.jpg",
      "old_price": 95,
      "price":  70 ,
    },
    {
      "name": " Gril Shoes ",
      "picture": "images/gril_sh.jpg",
      "old_price": 95,
      "price":  70 ,
    },
    {
      "name": " Gril Shoes ",
      "picture": "images/gril_sh.jpg",
      "old_price": 95,
      "price":  70 ,
    },
    {
      "name": " Gril Shoes ",
      "picture": "images/gril_sh.jpg",
      "old_price": 95,
      "price":  70 ,
    },


  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length ,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){

    return Single_prod(
    product_name: product_list[index]['name'],
    product_picture: product_list[index]['picture'],
    product_old_price: product_list[index]['old_price'],
    product_price: product_list[index]['price'],
    );

    });

  }

}
class
Single_prod extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Single_prod(
  {
    this.product_name,
    this.product_old_price,
    this.product_picture,
    this.product_price,
});



  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Hero(
          tag: product_name,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                  // value of the passing product_details Page
                prod_deatil_name: product_name,
                  prod_deatil_new_price: product_price,
                  prod_deatil_old_price: product_old_price,
                  prod_deatil_picture: product_picture,

                ),
            ),
            ),

            child: GridTile(
              footer: Container(
                height: 60,
                width: 60,


                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    product_name, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                  ),



                  title: Text(" "
                      "\$$product_price",
                    style: TextStyle(color: Colors.pink, fontWeight: FontWeight.w800,),
                  ),

            subtitle: Text(
              "\$$product_old_price",
              style: TextStyle(fontWeight: FontWeight.w600, decoration: TextDecoration.lineThrough, color: Colors.black),
            ),
                ),

              ),
              child: Image.asset(

                product_picture,
                fit:   BoxFit.cover,

              ) ,



            ),
          ),
        ),
      ),
    );
  }
}

