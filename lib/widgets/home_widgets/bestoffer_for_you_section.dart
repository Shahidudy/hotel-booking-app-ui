import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/photos.dart';

class BestofferForYouSection extends StatelessWidget {
  const BestofferForYouSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      // decoration: BoxDecoration(color: Colors.grey),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Best offer for you',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Container(
            height: 200,
            color: Colors.green,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  // height: 100,
                  child: Image.asset(bestPhoto1),
                ),
                Container(
                  // height: 100,
                  child: Image.asset(bestPhoto2),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
