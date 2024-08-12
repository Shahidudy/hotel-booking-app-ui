import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/launch_price_card.dart';

class ServiceLaunchPriceSection extends StatelessWidget {
  const ServiceLaunchPriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      height: 240,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 20,
              top: 10,
            ),
            child: Text(
              'Launch prices',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                launchPriceCard(roomRent: "999"),
                launchPriceCard(roomRent: "1199"),
                launchPriceCard(roomRent: "1499"),
                launchPriceCard(roomRent: "1500"),
                launchPriceCard(roomRent: "1600"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
