import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/house)detail_card.dart';

class CompanyServiceRoom extends StatelessWidget {
  const CompanyServiceRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 40),
      height: 370,
      // color: Colors.yellow,
      child: houseCardDeatails(
          myIcon: Icons.restaurant,
          typeOfHotel: 'Company-Serviced',
          hotelName: 'Super Townhouse OAK 101 Golf Course R..',
          hotelLocation: 'Rapid Metro Phase 1 Station, Gurgaon',
          hotelRent: 2635,
          oldPrice: 9881,
          offerPercent: 68,
          taxesAndFees: 512,
          hotelImage: AssetImage('asset/rooms/b-5.jpg'),
          hotelDetails: 'in-house restaurent available'),
    );
  }
}
