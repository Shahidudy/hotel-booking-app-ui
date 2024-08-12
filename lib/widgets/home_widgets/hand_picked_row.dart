import 'package:flutter/material.dart';

class HandPickedRow extends StatelessWidget {
  const HandPickedRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: 6,
      ),
      height: 320,
      // decoration: BoxDecoration(color: Colors.green),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Handipicked for you',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 280,
            // color: Colors.grey,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                houseCardDeatails(
                  typeOfHotel: 'Mid range',
                  hotelName: 'OYO A One Residency',
                  hotelLocation: 'Agasthyamuzi Jn, Mukkam',
                  hotelRent: 756,
                  oldPrice: 3640,
                  offerPercent: 74,
                  taxesAndFees: 176,
                  hotelImage: AssetImage(
                    'asset/rooms/b-1.jpg',
                  ),
                ),
                houseCardDeatails(
                  typeOfHotel: 'Mid range',
                  hotelName: 'OYO Flagship Hotel Mad..',
                  hotelLocation: 'Kuthiravattom,Calicut',
                  hotelRent: 1292,
                  oldPrice: 4202,
                  offerPercent: 63,
                  taxesAndFees: 261,
                  hotelImage: AssetImage(
                    'asset/rooms/b-3.jpg',
                  ),
                ),
                houseCardDeatails(
                  typeOfHotel: 'Mid range',
                  hotelName: 'OYO Collection O Marha..',
                  hotelLocation: 'Kozikode, Calicut',
                  hotelRent: 1365,
                  oldPrice: 4577,
                  offerPercent: 73,
                  taxesAndFees: 285,
                  hotelImage: AssetImage(
                    'asset/rooms/b-4.jpg',
                  ),
                ),
                houseCardDeatails(
                  typeOfHotel: 'Mid range',
                  hotelName: 'OYO A One Residency',
                  hotelLocation: 'Agasthyamuzi Jn, Mukkam',
                  hotelRent: 756,
                  oldPrice: 3640,
                  offerPercent: 74,
                  taxesAndFees: 176,
                  hotelImage: AssetImage(
                    'asset/rooms/b-1.jpg',
                  ),
                ),
                houseCardDeatails(
                  typeOfHotel: 'Mid range',
                  hotelName: 'OYO Flagship Hotel Mad..',
                  hotelLocation: 'Kuthiravattom,Calicut',
                  hotelRent: 1292,
                  oldPrice: 4202,
                  offerPercent: 63,
                  taxesAndFees: 261,
                  hotelImage: AssetImage(
                    'asset/rooms/b-3.jpg',
                  ),
                ),
                houseCardDeatails(
                  typeOfHotel: 'Mid range',
                  hotelName: 'OYO Collection O Marha..',
                  hotelLocation: 'Kozikode, Calicut',
                  hotelRent: 1365,
                  oldPrice: 4577,
                  offerPercent: 73,
                  taxesAndFees: 285,
                  hotelImage: AssetImage(
                    'asset/rooms/b-4.jpg',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget houseCardDeatails(
      {required String hotelName,
      required String hotelLocation,
      required int hotelRent,
      required int oldPrice,
      required int offerPercent,
      required int taxesAndFees,
      required ImageProvider hotelImage,
      required String typeOfHotel}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 140,
          width: 220,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: hotelImage,
            ),
            // color: Colors.yellow,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 10,
                top: 6,
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [Icon(Icons.person), Text(typeOfHotel)],
                  ),
                ),
              ),
              Positioned(
                  right: 10,
                  top: 7,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_outline,
                        size: 20,
                      ),
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          // color: Colors.green,
          margin: EdgeInsets.only(left: 2),
          // color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.star,
                color: Colors.red,
                size: 16,
              ),
              Text('4.6 (228)  |'),
              Icon(
                Icons.doorbell_outlined,
                size: 18,
              )
            ],
          ),
        ),
        Text(
          hotelName,
          style: TextStyle(fontSize: 17),
        ),
        Text(hotelLocation),
        Row(
          children: [
            Text(
              "₹$hotelRent",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 9,
            ),
            Text(
              '₹$oldPrice',
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
        Text('+₹$taxesAndFees taxes & fees'),
        Container(
          height: 20,
          decoration: BoxDecoration(color: Colors.lightGreen[100]),
          child: Row(
            children: [
              Icon(
                Icons.attach_money_sharp,
                size: 20,
              ),
              Text('Pay at Hotel'),
            ],
          ),
        )
      ],
    );
  }
}
