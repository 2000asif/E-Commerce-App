import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final prod_deatil_name;
  final prod_deatil_new_price;
  final prod_deatil_old_price;
  final prod_deatil_picture;

  ProductDetails({
    this.prod_deatil_name,
    this.prod_deatil_old_price,
    this.prod_deatil_new_price,
    this.prod_deatil_picture,

});





  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.pink,
        title: Center(
            child: Text("Diko App", style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic, color: Colors.white
            ),
            ),
        ),

        actions: [
          new IconButton(icon: Icon(Icons.search, color: Colors.white70,),
            onPressed: (){},
          ),

          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white70,),
            onPressed: (){},
          ),
        ],// Actions End.............

      ),


      body: new ListView(
        children: [

        // this.widget.prod_deatil_picture,
          //this.widget.prod_deatil_name,

          new Container(
            height: 310.0,


         child: GridTile(
           child:Container(
             color: Colors.white,
         //    child: Image.asset(widget.prod_deatil_picture),
             child: Image.asset(widget.prod_deatil_picture),

           ),


           footer: new Container(
             color: Colors.white70,
             child: ListTile(
             leading:  new Text(widget.prod_deatil_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
             ),

               title: new Row(
                 children: [
                   Expanded(child:
                       new Text("\$${widget.prod_deatil_old_price}",style: TextStyle(color: Colors.black54, decoration: TextDecoration.lineThrough),
                       )
                   ) ,



                   Expanded(child:
                       new Text("\$${widget.prod_deatil_new_price}", style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),)

                   )

                 ], //new Row Childen End....................
               ),

             ),
           ),

         ),




          ),
//          The Frist Buttons....................
          Row(
            children: [
 //           ......The size button............
              Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context, builder: (context){
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Choose The Size"),
                          actions: [
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),
                            ),
                          ],
                        );

                      } );
                      
                    },
                 
                    color: Colors.white,
                    textColor:  Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: [
                        Expanded(
                         child: new Text("Size", style: TextStyle(color: Colors.black54))
                        ),


                        Expanded(
                         child: new Icon(Icons.arrow_drop_down, color: Colors.black54,)
                        ),
                      ],
                    ),


              )
              ),
              ////  ......The size button............
              Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context, builder: (context){
                        return new AlertDialog(
                          title: new Text("Colors"),
                          content: new Text("Choose a color"),
                          actions: [
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),
                            ),
                          ],
                        );

                      } );

                    },


                    color: Colors.white,
                    textColor:  Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: [
                        Expanded(
                         child: new Text("Color", style: TextStyle(color: Colors.black54),)
                        ),
                        Expanded(
                         child: new Icon(Icons.arrow_drop_down, color: Colors.black54,),
                        ),
                      ],
                    ),
              )
              ),
              Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context, builder: (context){
                        return new AlertDialog(
                          title: new Text("Quality"),
                          content: new Text("Choose The Quality"),
                          actions: [
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),
                            ),
                          ],
                        );

                      } );

                    },

                    color: Colors.white,
                    textColor:  Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: [
                        Expanded(
                         child: new Text("Quality", style: TextStyle(color: Colors.black54),)
                        ),
                        Expanded(
                         child: new Icon(Icons.arrow_drop_down, color: Colors.black54,),
                        ),
                      ],
                    ),
              )
              ),
            ],
          )  ,



// .......The Second Buttons.........

          Row(
            children: [
 //           ......The size button............


              Expanded(
                  child: MaterialButton( onPressed: (){},
                    color: Colors.red,
                    textColor:  Colors.white,
                    elevation: 0.2,
                    child: new  Text("Buy now"),

              ),
              ),new IconButton(
                onPressed: (){},
                icon: Icon(Icons.add_shopping_cart,color: Colors.red,),

              ),
              new IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite_border), color: Colors.red,

              )
            ],
          ) ,
          Divider(),

          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text(


              "Suitable for the most special of events (yes we mean prom!),"
                  " our Mara dress will leave them feeling truly confident. "
                  "Designed in teal, her one-shouldered bodice is doused in gold sequins for a warm touch,"
                  " with a long skirt that dips slightly longer at the back. "
                  "Style with a cross body bag and short block heels to complete the look."











                ),
          ),
          Divider(),
          
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("product name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.prod_deatil_name),)
              
            ],
          ),
          
    
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("product brand", style: TextStyle(color: Colors.grey),),
              ),
              //........Create the product brand.........
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("brand X "),)
            ],
          ),

          // ......Add product Conditon..........
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("product condition", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("New"),)
            ],
          ),


        ],// new List View Chliden End...............

      ),

    );
  }
}


