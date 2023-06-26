import 'package:flutter/material.dart';
import 'package:language_app/componants/category_item.dart';
import 'package:language_app/screens/colors_page.dart';
import 'package:language_app/screens/family_page.dart';
import 'package:language_app/screens/numbers_page.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:language_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 118, 163, 254),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "What you want to learn about",
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 44, 44, 44),
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Category(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NumbersPage(),
                      ));
                },
                text: 'Numbers',
                color: Color(0xff90B2F9),
              ),
              SizedBox(
                height: 5,
              ),
              Category(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FamilyPage(),
                      ));
                },
                text: "Family",
                color: Color(0xff90B2F9),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Category(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ColorsPage(),
                      ));
                },
                text: 'Colors',
                color: Color(0xff90B2F9),
              ),
              SizedBox(
                height: 5,
              ),
              Category(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhrasesPage(),
                      ));
                },
                text: 'Phrases',
                color: Color(0xff90B2F9),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
