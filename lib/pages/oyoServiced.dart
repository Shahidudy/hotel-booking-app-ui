import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/oyo_service/background_image_stack.dart';
import 'package:hotel_booking_app_ui/widgets/oyo_service/company_service_container_section.dart';
import 'package:hotel_booking_app_ui/widgets/oyo_service/play_video_button.dart';
import 'package:hotel_booking_app_ui/widgets/oyo_service/this_is_oyo.dart';
import 'package:hotel_booking_app_ui/widgets/oyo_service/two_button_header.dart';
import 'package:hotel_booking_app_ui/widgets/service_coupon_section.dart';
import 'package:hotel_booking_app_ui/widgets/service_destination_section.dart';
import 'package:hotel_booking_app_ui/widgets/service_discover_section.dart';
import 'package:hotel_booking_app_ui/widgets/service_launch_price_section.dart';
import 'package:hotel_booking_app_ui/widgets/service_query_section.dart';
import 'package:hotel_booking_app_ui/widgets/service_staggered_photo_section.dart';

class OyoServicedPage extends StatefulWidget {
  const OyoServicedPage({super.key});

  @override
  State<OyoServicedPage> createState() => _OyoServicedPageState();
}

class _OyoServicedPageState extends State<OyoServicedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Stack(
            children: [
              //BACKGROUND IMAGE WITH STACK
              BackgroundImageStack(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //2 BUTTON SECTION > HEADER
                  TwoButtonHeaderSection(),

                  SizedBox(
                    height: 10,
                  ),

                  //COMPANY SERVICE CONTAINER  > SECTION
                  CompanyServiceContainerSection(),

                  SizedBox(
                    height: 10,
                  ),

                  //THIS IS OYO SERVICE TEXT
                  ThisIsOyoService(),

                  //PLAY VIDEO BUTTON SECTION
                  PlayVideoButton(),

                  //DISCOVER BY DESTINATION
                  ServiceDestinationSection(),
                  //-------------------------------------//
                  //LAUNCH PRICE CARD SECTION
                  ServiceLaunchPriceSection(),
                  //-------------------------------------//
                  //STAGGERED GRIDVIEW SECTION
                  ServiceStaggeredPhotoSection(),
                  ServiceDiscoverSection(),
                  ServiceCouponSection(),
                  //QUERRY SECTION
                  ServiceQuerySection(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
