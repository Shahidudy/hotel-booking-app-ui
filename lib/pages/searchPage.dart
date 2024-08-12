import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/search_widgets/search_textformfield_section.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: ListView(
            children: [
              //SEARCH TEXTFORM FIELD SECTION
              SearchTextformfieldSection(),

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Wed 7 Aug'),
                  Text('1N'),
                  Text('Thu 8 Aug'),
                  Text('1 room 1 guest'),
                ],
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.location_city),
                title: Text('Nearby'),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Continue your search',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              SizedBox(
                height: 7,
              ),
              ListTile(
                leading: Icon(Icons.local_dining),
                title: Text('Kozikode'),
                subtitle: Text('Today - Tomorrow . 1 guest'),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Frequently searched in Gurgaon',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              ListTile(
                leading: Icon(Icons.location_history),
                title: Text('All of Gurgaon'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.location_history),
                title: Text('Sector 14'),
              ),
              ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text('Medanta Hospital'),
              ),
              ListTile(
                leading: Icon(Icons.location_history),
                title: Text('Sector 38'),
              ),
              ListTile(
                leading: Icon(Icons.location_history),
                title: Text('Huda City Center Metro'),
              ),
              ListTile(
                leading: Icon(Icons.location_history),
                title: Text('Golf Course Road'),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Book a Super OYO',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 280,
                // color: Colors.yellow,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    houseCardDeatails(
                      typeOfHotel: 'Company Served',
                      hotelName: 'Super Town House OAK',
                      hotelLocation: 'Plot No 3706 Sector 23, Gurgaon',
                      hotelRent: 1733,
                      oldPrice: 7250,
                      offerPercent: 71,
                      taxesAndFees: 350,
                      hotelImage: AssetImage(
                        'asset/rooms/b-1.jpg',
                      ),
                    ),
                    houseCardDeatails(
                      typeOfHotel: 'Company Served',
                      hotelName: 'Super Town House OAK 101',
                      hotelLocation: 'Rapid Metrp Phase 1 Station',
                      hotelRent: 2239,
                      oldPrice: 8414,
                      offerPercent: 68,
                      taxesAndFees: 441,
                      hotelImage: AssetImage(
                        'asset/rooms/b-3.jpg',
                      ),
                    ),
                    houseCardDeatails(
                      typeOfHotel: 'Company Served',
                      hotelName: 'Spacious Super Town House',
                      hotelLocation: 'Secctor 53, Gurgaon',
                      hotelRent: 1144,
                      oldPrice: 4837,
                      offerPercent: 71,
                      taxesAndFees: 244,
                      hotelImage: AssetImage(
                        'asset/rooms/b-4.jpg',
                      ),
                    ),
                    houseCardDeatails(
                      typeOfHotel: 'Company Served',
                      hotelName: 'OYO The Prince',
                      hotelLocation: 'Haryana 122017, Gurgaon',
                      hotelRent: 807,
                      oldPrice: 3400,
                      offerPercent: 70,
                      taxesAndFees: 194,
                      hotelImage: AssetImage(
                        'asset/rooms/b-5.jpg',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, top: 20),
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    // color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: Center(
                    child: Text(
                  'View All',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Book trending OYOs',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 280,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    houseCardDeatails(
                      typeOfHotel: 'Mid range',
                      hotelName: 'FA Homes Stay',
                      hotelLocation: 'Haryana, Gurgaon',
                      hotelRent: 805,
                      oldPrice: 3445,
                      offerPercent: 69,
                      taxesAndFees: 184,
                      hotelImage: AssetImage('asset/rooms/b-5.jpg'),
                    ),
                    houseCardDeatails(
                      typeOfHotel: 'Mid range',
                      hotelName: 'Flagship Jdm Residency',
                      hotelLocation: 'Sector 43899 Sec 43',
                      hotelRent: 752,
                      oldPrice: 3265,
                      offerPercent: 65,
                      taxesAndFees: 180,
                      hotelImage: AssetImage('asset/rooms/b-6.jpg'),
                    ),
                    houseCardDeatails(
                      typeOfHotel: 'Mid range',
                      hotelName: 'Flagship',
                      hotelLocation: 'Haryana, Gurgaon',
                      hotelRent: 502,
                      oldPrice: 1941,
                      offerPercent: 67,
                      taxesAndFees: 129,
                      hotelImage: AssetImage('asset/rooms/b-7.jpg'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, top: 20),
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    // color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: Center(
                    child: Text(
                  'View All',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
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
                  width: 160,
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
        Text('+ $taxesAndFees taxes & fees'),
        Container(
          height: 20,
          padding: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              color: Colors.lightGreen[100],
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Icon(
                Icons.attach_money_sharp,
                size: 20,
              ),
              Text('Pay at Hotel'),
            ],
          ),
        ),
      ],
    );
  }
}
