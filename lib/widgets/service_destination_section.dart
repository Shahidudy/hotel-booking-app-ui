import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/photos.dart';
import 'package:hotel_booking_app_ui/widgets/places_row.dart';

class ServiceDestinationSection extends StatelessWidget {
  const ServiceDestinationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Text(
              'Discover by destination',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            height: 90,
            // decoration: BoxDecoration(color: Colors.green),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                placesRow(placeName: 'Bangalore', placePic: bangalore),
                placesRow(placeName: 'Chennai', placePic: chennai),
                placesRow(placeName: 'Delhi', placePic: delhi),
                placesRow(placeName: 'Gurgaon', placePic: gurgaon),
                placesRow(placeName: 'Hyderabad', placePic: hyderabad),
                placesRow(placeName: 'Hyderabad', placePic: kolkatta),
                placesRow(placeName: 'Hyderabad', placePic: mumbai),
                placesRow(placeName: 'Hyderabad', placePic: noida),
                placesRow(placeName: 'Hyderabad', placePic: pune),
                placesRow(placeName: 'Hyderabad', placePic: hyderabad),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        child: Icon(Icons.location_city_sharp),
                        // backgroundImage: AssetImage(placePic),
                      ),
                      Text('All cities')
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
