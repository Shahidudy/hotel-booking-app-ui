import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/bestoffer_for_you_section.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/company_service_room.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/continue_your_search_section.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/hand_picked_row.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/location_rows.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/mid_range_rooms.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/oyo_found_row.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/oyo_serviced_premium_hotels_row.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/search_section.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/sorting_section.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/super_oyo_rooms.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/town_house_oyo_rooms.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/view_all_button.dart';
import 'package:hotel_booking_app_ui/widgets/home_widgets/view_all_offers_button.dart';
import 'package:hotel_booking_app_ui/widgets/myDrawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: myDrawer(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView(
          children: [
            //HAMBURG BUTTON SECTION
            hamburgButtonSection(),

            //SEARCH SECTION
            SearchSection(),

            //LOCATION SECTION
            LocationRows(),

            //HAND PICKED FOR YOU SECTION
            HandPickedRow(),

            //OYO SERVICED PREMIUM HOTELS SECTION
            oYoServicePreminumHotel(),

            //CONTINUE YOUR SEARCH SECTION
            ContinueYourSearchSection(),

            //BEST OFFER FOR YOU SECTION
            BestofferForYouSection(),

            //VIEW ALL OFFERS //BUTTON
            ViewAllOffersButton(),

            //74 OYOs FOUND SECTION
            OyoFoundRow(),

            //SORTING CONTINER
            SortingSection(),

            //SLIDING PHOTOS SECTION {COMPANY-SERVICED OYOs}
            CompanyServiceRoom(),

            //SUPER OYOs SECTION
            SuperOyoRooms(),

            //MID RANGE OYOs SECTION
            MidRangeRooms(),

            //TOWNHOUSE OYOs
            TownHouseOyoRooms(),

            //VIEW ALL BUTTON SECTION
            ViewAllButton()
          ],
        ),
      )),
    );
  }

  Widget hamburgButtonSection() {
    return Container(
      height: 50,
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              icon: Icon(Icons.menu)),
          Spacer(),
          Icon(Icons.person),
          Spacer()
        ],
      ),
    );
  }
}
