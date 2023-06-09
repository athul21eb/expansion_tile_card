import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class Games extends StatefulWidget {
  final String title;
  final String company;
  final String icon;
  final String coverpicture;
  final String about;
  const Games({
    required this.about,
    required this.title,
    required this.company,
    required this.coverpicture,
    required this.icon,
    super.key,
  });

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  final GlobalKey<ExpansionTileCardState> gamesd = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      contentPadding: const EdgeInsets.all(10),
      key: gamesd,
      elevation: 0,
      animateTrailing: true,
      subtitle: Text("Developed by ${widget.company}"),
      title: Text(widget.title),
      leading: CircleAvatar(
        backgroundImage: AssetImage(widget.icon),
      ),
      children: [
        const Divider(
          thickness: 1.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.coverpicture),
            ),
          ),
        ),
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Text(
            widget.about,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.left,
          ),
        ),
        TextButton.icon(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red[300])),
          onPressed: () {
            gamesd.currentState?.collapse();
          },
          icon: const Icon(
            Icons.close,
            color: Colors.black,
            size: 20,
          ),
          label: const Text(
            'CLOSE',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
