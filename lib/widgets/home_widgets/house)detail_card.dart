import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/photos.dart';

List curouselImages = [room1, room2, room3, room4, room5, room6, room7];
Widget houseCardDeatails({
  required String hotelName,
  required String hotelLocation,
  required int hotelRent,
  required int oldPrice,
  required int offerPercent,
  required int taxesAndFees,
  required ImageProvider hotelImage,
  required String typeOfHotel,
  required String hotelDetails,
  required IconData myIcon,
  // required String townOrCompanyHouse,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          height: 200.0,
        ),
        items: [1, 2, 3, 4, 5, 6].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                        curouselImages[i],
                      ),
                      fit: BoxFit.fill),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 5,
                      left: 10,
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 5, right: 5, top: 3, bottom: 3),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          typeOfHotel,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 5,
                        right: 10,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                size: 20,
                              )),
                        ))
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        // color: Colors.green,
        margin: EdgeInsets.only(left: 2),
        // color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.star,
              color: Colors.red,
              size: 16,
            ),
            Text('4.1 (685)'),
            Container(
              height: 20,
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Icon(
                    Icons.double_arrow,
                    size: 20,
                  ),
                  Text('Wizard'),
                ],
              ),
            ),
            Container(
              height: 20,
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(color: Colors.lightGreen[100]),
              child: Row(
                children: [
                  Icon(
                    Icons.payment,
                    size: 20,
                  ),
                  Text('Pay at Hotel'),
                ],
              ),
            ),
          ],
        ),
      ),
      Text(
        hotelName,
        style: TextStyle(fontSize: 17),
      ),
      Text(
        hotelLocation,
        style: TextStyle(fontSize: 14),
      ),
      Row(
        children: [
          Icon(
            Icons.people,
            color: Colors.purple,
            size: 18,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Couples are welcome',
            style: TextStyle(color: Colors.purple),
          ),
        ],
      ),
      Row(
        children: [
          Icon(
            myIcon,
            color: Colors.black,
            size: 18,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            hotelDetails,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      Row(
        children: [
          Text(
            "Rs:$hotelRent",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 9,
          ),
          Text(
            'Rs:$oldPrice',
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '  $offerPercent % OFF',
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
      Text('+$taxesAndFees taxes & fees'),
    ],
  );
}
