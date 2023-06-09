import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

import 'widgets/expansion_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Games"),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            const Games(
              about:
                  "eFootball is an association football simulation video game developed and published by Konami. It is a free-to-play game after being completely rebranded from the original Pro Evolution Soccer (known as Winning Eleven in Japan) series to the eFootball series. The game's first year, entitled eFootball 2022, was released on 30 September 2021. It was later changed to the game's second year, eFootball 2023, on August 25, 2022. This game is part of the International Esports Federation's World Championship and North and Eastern Europa League (NEEC).",
              title: "EFOOTBALL",
              company: 'KONAMI',
              coverpicture: 'assets/3w.jpeg',
              icon: 'assets/3.png',
            ),
            const Games(
              icon: "assets/1.jpeg",
              title: "BGMI",
              company: "KRAFTON",
              about:
                  "Battlegrounds Mobile India (BGMI), a free-to-play battle royale game developed by the South Korean gaming company Krafton, is very popular among those who are passionate about online gaming. It is India's adaptation of PUBG Mobile game, which was banned by India in 2020.",
              coverpicture: "assets/1w.webp",
            ),
            const Games(
                about:
                    "Free Fire is a popular battle royale game developed and published by Garena. It is available as a free-to-play game on mobile devices and has gained significant popularity worldwide. ",
                title: "FREE FIRE",
                company: "GARENA",
                coverpicture: "assets/2w.jpg",
                icon: "assets/2.jpeg")
          ],
        ),
      ),
    );
  }
}
