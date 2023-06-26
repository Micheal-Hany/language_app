import 'package:flutter/material.dart';

import 'package:language_app/componants/number_item.dart';
import 'package:language_app/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Number> numbers = const [
    Number(
        image: "assets/images/colors/color_white.png",
        jpName: "shiro",
        enName: "White",
        sound: 'assets/sounds/colors/white.wav'),
    Number(
        image: "assets/images/colors/color_black.png",
        jpName: "kuro",
        enName: "Black",
        sound: 'assets/sounds/colors/black.wav'),
    Number(
        image: "assets/images/colors/color_brown.png",
        jpName: "chairo",
        enName: "Brown",
        sound: 'assets/sounds/colors/brown.wav'),
    Number(
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "kusunda kiiro",
        enName: "Dusty Yellow",
        sound: 'assets/sounds/colors/dusty yellow.wav'),
    Number(
        image: "assets/images/colors/color_gray.png",
        jpName: "guree",
        enName: "Grey",
        sound: 'assets/sounds/colors/gray.wav'),
    Number(
        image: "assets/images/colors/color_green.png",
        jpName: "midori",
        enName: "Green",
        sound: 'assets/sounds/colors/green.wav'),
    Number(
        image: "assets/images/colors/color_red.png",
        jpName: "aka",
        enName: "Red",
        sound: 'assets/sounds/colors/red.wav'),
    Number(
        image: "assets/images/colors/yellow.png",
        jpName: "kiiro",
        enName: "Yellow",
        sound: 'assets/sounds/colors/yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color.fromARGB(255, 73, 133, 254),
          title: Text(
            "Colors",
            style: TextStyle(color: Colors.black, letterSpacing: 1.4),
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ItemNumber(
              number: numbers[index],
            );
          },
        ));
  }
}
