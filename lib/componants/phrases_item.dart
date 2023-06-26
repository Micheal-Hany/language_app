import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'package:language_app/models/number.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 120, 163, 251),
      height: 100,
      child: Row(children: [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                number.jpName,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Text(
                number.enName,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
                onPressed: () {
                  AssetsAudioPlayer.newPlayer().open(
                    Audio(number.sound),
                    autoStart: true,
                    showNotification: true,
                  );
                },
                icon: Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.black,
                  size: 30,
                )))
      ]),
    );
  }
}
