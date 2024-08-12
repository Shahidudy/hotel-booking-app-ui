import 'package:flutter/material.dart';

class BackgroundImageStack extends StatelessWidget {
  const BackgroundImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Image(
        image: AssetImage(
          'asset/rooms/h-1.webp',
        ),
        height: 350,
      ),
    );
  }
}
