import 'dart:math';

import 'package:flutter/material.dart';

class ItemNote extends StatelessWidget {
  const ItemNote({super.key});

  //this is for random colors items
  final data = const [
    Color(0xFFF6CBC0),
    Color(0xFFF1A09E),
    Color(0xFFF0A0A8),
    Color(0xFFE5857B),
    Color(0xFFF1B2B2),
    Color(0xFFEFAA97)
  ];
  Color getRandomColor() {
    Random random = Random();
    return data[random.nextInt(data.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: getRandomColor(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                "Build your career with shaymae",
                style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                  fontSize: 20,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "Jul21,2023",
              style:
                  TextStyle(color: Colors.black.withOpacity(.4), fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
