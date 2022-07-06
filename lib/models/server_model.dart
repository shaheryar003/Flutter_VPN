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
    id: 1,
    image: 'assets/country/flag/ic_vietnamese.png',
    title: "Vietnam",
  ),
  Flag(
    id: 2,
    image: "assets/country/flag/ic_us.png",
    title: "United States",
  ),
  Flag(
    id: 3,
    image: "assets/country/flag/ic_ar.png",
    title: "United Arab Emirates",
  ),
  Flag(
    id: 4,
    image: "assets/country/flag/ic_thai.png",
    title: "Thailand",
  ),
  Flag(
    id: 5,
    image: "assets/country/flag/ic_india.png",
    title: "India",
  ),
  Flag(
    id: 6,
    image: "assets/country/flag/ic_korean.png",
    title: "Korea",
  ),
  Flag(
    id: 7,
    image: "assets/country/flag/ic_japanese.png",
    title: "Japan",
  ),
];
