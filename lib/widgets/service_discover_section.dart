import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/discover_row.dart';
import 'package:hotel_booking_app_ui/widgets/photos.dart';

class ServiceDiscoverSection extends StatelessWidget {
  const ServiceDiscoverSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, left: 20, right: 20),
      height: 300,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // color: Colors.yellow,
            margin: EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: Text(
              'Discover our premium range',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            height: 225,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                discoverRow(
                  imageUrl: preRoom1,
                  hotelTitle: 'Sunday',
                  subTitle: 'Homegrown luxury Hotel',
                ),
                discoverRow(
                  imageUrl: preRoom2,
                  hotelTitle: 'Palette',
                  subTitle: 'Handpicked collection of preminum hotels',
                ),
                discoverRow(
                    imageUrl: preRoom3,
                    hotelTitle: 'OYO Townhouse',
                    subTitle: 'Chic stays at affordable rates')
              ],
            ),
          )
        ],
      ),
    );
  }
}
