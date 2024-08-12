import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/house)detail_card.dart';

class MidRangeRooms extends StatelessWidget {
  const MidRangeRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 40),
      height: 370,
      // color: Colors.yellow,
      child: houseCardDeatails(
          myIcon: Icons.restaurant,
          typeOfHotel: 'Mid range',
          hotelName: 'Collection O The Green Access',
          hotelLocation: 'Sector 47, Gurgaon',
          hotelRent: 1070,
          oldPrice: 4531,
          offerPercent: 70,
          taxesAndFees: 231,
          hotelImage: AssetImage(''),
          hotelDetails: 'Rated high for cleanliness'),
    );
  }
}
