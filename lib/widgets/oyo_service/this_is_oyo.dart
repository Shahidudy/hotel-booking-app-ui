import 'package:flutter/material.dart';

class ThisIsOyoService extends StatelessWidget {
  const ThisIsOyoService({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        'This is OYO serviced\npremium hotel',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
      ),
    );
  }
}
