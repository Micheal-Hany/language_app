import 'package:flutter/material.dart';

import 'package:language_app/componants/number_item.dart';
import 'package:language_app/models/number.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<Number> numbers = const [
    Number(
      image: "assets/images/family_members/family_father.png",
      jpName: "otousan",
      enName: "father",
      sound: 'assets/sounds/family_members/father.wav',
    ),
    Number(
      image: "assets/images/family_members/family_daughter.png",
      jpName: "musume",
      enName: "daughter",
      sound: 'assets/sounds/family_members/daughter.wav',
    ),
    Number(
      image: "assets/images/family_members/family_grandfather.png",
      jpName: "ojiisan",
      enName: "grand father",
      sound: 'assets/sounds/family_members/grand father.wav',
    ),
    Number(
      image: "assets/images/family_members/family_mother.png",
      jpName: "okaasan",
      enName: "mother",
      sound: 'assets/sounds/family_members/mother.wav',
    ),
    Number(
      image: "assets/images/family_members/family_grandmother.png",
      jpName: "obaasan",
      enName: "grand mother",
      sound: 'assets/sounds/family_members/grand mother.wav',
    ),
    Number(
      image: "assets/images/family_members/family_older_brother.png",
      jpName: "oniisan",
      enName: "older brother",
      sound: 'assets/sounds/family_members/older bother.wav',
    ),
    Number(
      image: "assets/images/family_members/family_older_sister.png",
      jpName: "oneesan",
      enName: "older sister",
      sound: 'assets/sounds/family_members/older sister.wav',
    ),
    Number(
      image: "assets/images/family_members/family_son.png",
      jpName: "musuko",
      enName: "son",
      sound: 'assets/sounds/family_members/son.wav',
    ),
    Number(
      image: "assets/images/family_members/family_younger_brother.png",
      jpName: "otoutosan",
      enName: "younger brother",
      sound: 'assets/sounds/family_members/younger brohter.wav',
    ),
    Number(
      image: "assets/images/family_members/family_younger_sister.png",
      jpName: "imoutosan",
      enName: "younger sister",
      sound: 'assets/sounds/family_members/younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color.fromARGB(255, 73, 133, 254),
          title: Text(
            "Family",
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
