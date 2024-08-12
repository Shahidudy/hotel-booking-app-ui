import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/house)detail_card.dart';

class TownHouseOyoRooms extends StatelessWidget {
  const TownHouseOyoRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      height: 370,
      // color: Colors.yellow,
      child: houseCardDeatails(
          myIcon: Icons.restaurant,
          typeOfHotel: 'Townhouse',
          hotelName: 'OYO Townhouse 683 ROYAL OAK',
          hotelLocation: 'Hude Meto Station, Gurgaon',
          hotelRent: 1083,
          oldPrice: 5096,
          offerPercent: 74,
          taxesAndFees: 234,
          hotelImage: AssetImage(''),
          hotelDetails: 'in-house restaurent availabe'),
    );
  }
}
