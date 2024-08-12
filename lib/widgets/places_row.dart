import 'package:flutter/material.dart';

Widget placesRow({required String placeName, required String placePic}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 20, right: 10),
    child: Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage(placePic),
        ),
        Text(placeName)
      ],
    ),
  );
}
