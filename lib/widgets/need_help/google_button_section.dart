import 'package:flutter/material.dart';

class GoogleButtonSection extends StatelessWidget {
  const GoogleButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(),
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        'Continue with Google',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      )),
    );
  }
}
