import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class Games extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      elevation: 0,
      animateTrailing: true,
      subtitle: Text("Developed by $company"),
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: AssetImage(icon),
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
              image: AssetImage(coverpicture),
            ),
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Text(
            about,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
