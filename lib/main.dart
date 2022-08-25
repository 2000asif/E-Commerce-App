

import 'package:flutter/material.dart';
import 'package:techasif/horizontal.dart';
import 'package:techasif/products.dart';


void main () => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}
class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    /* height: 200,
      child: new Carousel(
        boxFit : BoxFit.cover,
        images: [
          AssetImage('images/as1.jpg'),
          AssetImage('images/as2.jpg'),
          AssetImage('images/as4.jpg')

        ],

        autoplay: true,
       //animationCurve: Curves.fastOutSlowIn,
       // animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,*/

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.pink,
        title: Center(child: Text("E Commerce", style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,color: Colors.white),)),

        actions: [
          new IconButton(icon: Icon(Icons.search, color: Colors.white, size: 28,),
            onPressed: (){},

          ),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white, size: 25,),
            onPressed: (){},

          ),
        ],

      ),


      drawer: new Drawer(
        child: new ListView(
          children:  [
            //  header
            new UserAccountsDrawerHeader(
                accountName: Text('Diko App'),
                accountEmail: Text('dikoapp8080@gmail.com'),

              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),

              decoration: new BoxDecoration(color: Colors.pink,),
            ),

//            body..........................................................
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Home Page '),
              leading: Icon(Icons.home),
            ),
          ),

            InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('My account '),
              leading: Icon(Icons.person),
            ),
          ),

            InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('My Orders '),
              leading: Icon(Icons.shopping_basket),
            ),
          ),

            InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Categoris  '),
              leading: Icon(Icons.dashboard),
            ),
          ),

            InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Favourites  '),
              leading: Icon(Icons.favorite, color:  Colors.orangeAccent,),
            ),
          ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text(' Settings  ', ),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About  '),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            ),

          ], //Childen
        ),
      ),


      body: new ListView(

        children: [

        //  imageCarousel,

          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text("Categories" , style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),


          HorizontalList(), //HorizontaList page Call.........


          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text("Recent Products" , style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
            ),
          ),

          //grid view..........
          Container(
            height: 420.0,

            child: Products(),
          )

        ],//Childen End
      ),

    );
  }
}
