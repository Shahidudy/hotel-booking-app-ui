import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/house)detail_card.dart';

class SuperOyoRooms extends StatelessWidget {
  const SuperOyoRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 40),
      height: 370,
      // color: Colors.yellow,
      child: houseCardDeatails(
          myIcon: Icons.restaurant,
          typeOfHotel: 'Super OYO',
          hotelName: 'Super Townhouse OAK The Grace Inn..',
          hotelLocation: 'Dlf Phase-1 Rapid Metro Station, Gurgaon',
          hotelRent: 1062,
          oldPrice: 4502,
          offerPercent: 71,
          taxesAndFees: 230,
          hotelImage: AssetImage(''),
          hotelDetails: 'in-house restaurent available'),
    );
  }
}
