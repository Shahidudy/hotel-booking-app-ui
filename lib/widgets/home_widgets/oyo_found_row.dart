import 'package:flutter/material.dart';

class OyoFoundRow extends StatelessWidget {
  const OyoFoundRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 5),
      height: 50,
      // decoration: BoxDecoration(color: Colors.green),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '74 OYOs found',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'Price per room per night',
            style: TextStyle(color: Colors.grey[700]),
          )
        ],
      ),
    );
  }
}
