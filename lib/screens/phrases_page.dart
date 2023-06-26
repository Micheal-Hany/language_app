import 'package:flutter/material.dart';
import 'package:language_app/componants/number_item.dart';
import 'package:language_app/componants/phrases_Item.dart';
import 'package:language_app/models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Number> numbers = const [
    Number(
        image: "",
        jpName: "kiteimasu ka",
        enName: "are you coming",
        sound: 'assets/sounds/phrases/are_you_coming.wav'),
    Number(
        image: "",
        jpName: "koudoku o wasurenaide kudasai",
        enName: "dont forget to subscribe",
        sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav'),
    Number(
        image: "",
        jpName: "taichou wa dou desu ka",
        enName: "how are you feeling",
        sound: 'assets/sounds/phrases/how_are_you_feeling.wav'),
    Number(
        image: "",
        jpName: "anime ga daisuki desu",
        enName: "i love anime",
        sound: 'assets/sounds/phrases/i_love_anime.wav'),
    Number(
        image: "",
        jpName: "programming ga daisuki desu",
        enName: "i love programming",
        sound: 'assets/sounds/phrases/i_love_programming.wav'),
    Number(
        image: "",
        jpName: "programming wa kantan desu",
        enName: "programming is easy",
        sound: 'assets/sounds/phrases/programming_is_easy.wav'),
    Number(
        image: "",
        jpName: "onamae wa nan desu ka",
        enName: "what is your name",
        sound: 'assets/sounds/phrases/what_is_your_name.wav'),
    Number(
        image: "",
        jpName: "doko ni iku no desu ka",
        enName: "where are you going",
        sound: 'assets/sounds/phrases/where_are_you_going.wav'),
    Number(
        image: "",
        jpName: "hai, ikimasu",
        enName: "yes im coming",
        sound: 'assets/sounds/phrases/yes_im_coming.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color.fromARGB(255, 73, 133, 254),
          title: Text(
            "Phrases",
            style: TextStyle(color: Colors.black, letterSpacing: 1.4),
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              number: numbers[index],
            );
          },
        ));
  }
}
