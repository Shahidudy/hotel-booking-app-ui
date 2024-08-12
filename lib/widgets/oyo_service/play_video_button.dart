import 'package:flutter/material.dart';

class PlayVideoButton extends StatelessWidget {
  const PlayVideoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20),
      padding: EdgeInsets.only(left: 10, right: 10),
      width: 130,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.play_arrow),
          Text(
            'Play video',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
          )
        ],
      ),
    );
  }
}
