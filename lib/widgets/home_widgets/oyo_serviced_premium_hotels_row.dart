import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/oyo_service_premium_card.dart';

Widget oYoServicePreminumHotel() {
  return Container(
    margin: EdgeInsets.only(top: 20, left: 0, right: 2),
    height: 240,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5, top: 10, bottom: 10),
          child: Text(
            'OYO Serviced premium hotels',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 5),
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              OyoServicePremiumCard(
                roomRent: 900,
                butonText: false,
              ),
              OyoServicePremiumCard(
                roomRent: 1000,
                butonText: true,
              ),
              OyoServicePremiumCard(
                roomRent: 1100,
                butonText: true,
              ),
              OyoServicePremiumCard(
                roomRent: 1200,
                butonText: true,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
