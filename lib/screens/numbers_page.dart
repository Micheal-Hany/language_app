import 'package:flutter/material.dart';
import 'package:language_app/componants/number_item.dart';
import 'package:language_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> numbers = const [
    Number(
        image: "assets/images/numbers/number_one.png",
        jpName: "ichi",
        enName: "one",
        sound: 'assets/sounds/numbers/number_one_sound.mp3'),
    Number(
        image: "assets/images/numbers/number_two.png",
        jpName: "ni",
        enName: "two",
        sound: 'assets/sounds/numbers/number_two_sound.mp3'),
    Number(
        image: "assets/images/numbers/number_three.png",
        jpName: "san",
        enName: "three",
        sound: 'assets/sounds/numbers/number_three_sound.mp3'),
    Number(
        image: "assets/images/numbers/number_four.png",
        jpName: "shi",
        enName: "four",
        sound: 'assets/sounds/numbers/number_four_sound.mp3'),
    Number(
        image: "assets/images/numbers/number_five.png",
        jpName: "go",
        enName: "five",
        sound: 'assets/sounds/numbers/number_five_sound.mp3'),
    Number(
        image: "assets/images/numbers/number_six.png",
        jpName: "roku",
        enName: "six ",
        sound: 'assets/sounds/numbers/number_six_sound.mp3'),
    Number(
        image: "assets/images/numbers/number_seven.png",
        jpName: "shichi",
        enName: "seven",
        sound: 'assets/sounds/numbers/number_seven_sound.mp3'),
    Number(
        image: "assets/images/numbers/number_eight.png",
        jpName: "hachi",
        enName: "eghit",
        sound: 'assets/sounds/numbers/number_eight_sound.mp3'),
    Number(
        image: "assets/images/numbers/number_nine.png",
        jpName: "(kyū or ku)",
        enName: "nine",
        sound: 'assets/sounds/numbers/number_nine_sound.mp3'),
    Number(
        image: "assets/images/numbers/number_ten.png",
        jpName: "jū",
        enName: "ten",
        sound: 'assets/sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color.fromARGB(255, 73, 133, 254),
          title: Text(
            "Members",
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
