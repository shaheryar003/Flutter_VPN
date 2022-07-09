import 'package:flutter/material.dart';

class Flag {
  final int id;
  final String title, image;

  Flag({
    required this.id,
    required this.image,
    required this.title,
  });
}

List<Flag> flaglist = [

  Flag(
    id:1 ,
    image: "assets/country/flag/ic_korean.png",
    title: "South Korea",
  ),

];
