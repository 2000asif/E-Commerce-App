/*import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselExample extends StatefulWidget {
  @override
  _CarouselExampleState createState() => _CarouselExampleState();
}

class _CarouselExampleState extends State<CarouselExample> {
  final List<String> images = [
    'https://media.istockphoto.com/photos/young-woman-snorkeling-with-coral-reef-fishes-picture-id939931682?s=612x612',
    'https://media.istockphoto.com/photos/woman-relaxing-in-sleeping-bag-on-red-mat-camping-travel-vacations-in-picture-id1210134412?s=612x612',
    'https://media.istockphoto.com/photos/green-leaf-with-dew-on-dark-nature-background-picture-id1050634172?s=612x612',
    'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?s=612x612',
    // 'https://www.istockphoto.com/en/photo/woman-standing-and-looking-at-lago-di-carezza-in-dolomites-gm1038870630-278083784',
    'https://media.istockphoto.com/photos/picturesque-morning-in-plitvice-national-park-colorful-spring-scene-picture-id1093110112?s=612x612',
    'https://media.istockphoto.com/photos/connection-with-nature-picture-id1174472274?s=612x612',
    'https://media.istockphoto.com/photos/in-the-hands-of-trees-growing-seedlings-bokeh-green-background-female-picture-id1181366400',
    'https://media.istockphoto.com/photos/winding-road-picture-id1173544006?s=612x612',
    'https://media.istockphoto.com/photos/sunset-with-pebbles-on-beach-in-nice-france-picture-id1157205177?s=612x612',
    'https://media.istockphoto.com/photos/waves-of-water-of-the-river-and-the-sea-meet-each-other-during-high-picture-id1166684037?s=612x612',
    'https://media.istockphoto.com/photos/happy-family-mother-father-children-son-and-daughter-on-sunset-picture-id1159094800?s=612x612',
    'https://media.istockphoto.com/photos/butterflies-picture-id1201252148?s=612x612',
    'https://media.istockphoto.com/photos/beautiful-young-woman-blows-dandelion-in-a-wheat-field-in-the-summer-picture-id1203963917?s=612x612',
    'https://media.istockphoto.com/photos/summer-meadow-picture-id1125637203?s=612x612',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.indigo,
        title: Text('Carousel Slider'),
      ),
      body: SizedBox(
        height: 200.0,
        width: double.infinity,
        child: Carousel(
          dotSpacing: 15.0,
          dotSize: 6.0,
          dotIncreasedColor: Colors.red,
          dotBgColor: Colors.transparent,
          indicatorBgPadding: 10.0,
          dotPosition: DotPosition.topCenter,
          images: images
              .map((item) => Container(
            child: Image.network(
              item,
              fit: BoxFit.cover,
            ),
          ))
              .toList(),
        ),
      ),
    );
  }
}*/