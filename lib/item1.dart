import 'package:flutter/material.dart';

class Item{

  String title;
  Color color;
  String price;
  String PriceDescription ;
  String imageUrl ;
  String description ;

  Item({required  this.title, required  this.color,required this.price,required  this.PriceDescription,required this.imageUrl,required this.description});
  static List<Item> list=[
    Item(
        color: Color(0xFFF4E389),
        price:"25",
      description:"kbdfij dgdfjkbgkdfj dfgdjkbjk dfbnjiogtfhdeyghd vhjdfbgvfh dfvdfjbdjbdlf dbvfdjkbgdfb nbdnbdfj",
        imageUrl:"assets/image/blueberry.png",
      PriceDescription: '',
      title: '',



    ),
    Item(
      color:Color(0xFFDFDFF8),

      price:"25",
      description:"kbdfij dgdfjkbgkdfj dfgdjkbjk dfbnjiogtfhdeyghd vhjdfbgvfh dfvdfjbdjbdlf dbvfdjkbgdfb nbdnbdfj",
      imageUrl:"assets/image/blueberry.png",
      PriceDescription: '',
      title: '',



    ),
    Item(
      color: Color(0xFFEAB9E7),
      price:"25",
      description:"kbdfij dgdfjkbgkdfj dfgdjkbjk dfbnjiogtfhdeyghd vhjdfbgvfh dfvdfjbdjbdlf dbvfdjkbgdfb nbdnbdfj",
      imageUrl:"assets/image/dragon_fruit.png",
      PriceDescription: '',
      title: '',



    ),
    Item(
      color: Color(0xFF84E0AA),
      price:"25",
      description:"kbdfij dgdfjkbgkdfj dfgdjkbjk dfbnjiogtfhdeyghd vhjdfbgvfh dfvdfjbdjbdlf dbvfdjkbgdfb nbdnbdfj",
      imageUrl:"assets/image/lychee.png",
      PriceDescription: '',
      title: '',



    ),
    Item(
      color: Color(0xFFF8DA8A),
      price:"25",
      description:"kbdfij dgdfjkbgkdfj dfgdjkbjk dfbnjiogtfhdeyghd vhjdfbgvfh dfvdfjbdjbdlf dbvfdjkbgdfb nbdnbdfj",
      imageUrl:"assets/image/mango.png",
      PriceDescription: '',
      title: '',



    ),
    Item(
      color: Color(0xFFFFB570),
      price:"25",
      description:"kbdfij dgdfjkbgkdfj dfgdjkbjk dfbnjiogtfhdeyghd vhjdfbgvfh dfvdfjbdjbdlf dbvfdjkbgdfb nbdnbdfj",
      imageUrl:"assets/image/papaya.png",
      PriceDescription: '',
      title: '',



    ),
  ];
}