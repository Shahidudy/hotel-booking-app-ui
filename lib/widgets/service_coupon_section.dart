import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/photos.dart';

class ServiceCouponSection extends StatelessWidget {
  const ServiceCouponSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10, right: 20),
      padding: EdgeInsets.only(left: 20, top: 10, right: 20),
      height: 275,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get guaranteed coupons',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'by staying at Company-Serviced OYOs',
            style: TextStyle(fontSize: 15, color: Colors.grey[500]),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 15,
            ),
            height: 120,
            decoration: BoxDecoration(
                // color: Colors.red,
                ),
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(left: 0),
              childAspectRatio: 1.5,
              crossAxisSpacing: 9,
              crossAxisCount: 3,
              mainAxisSpacing: 0,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        coupon1,
                      ),
                      // fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      // color: Colors.amber,

                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(coupon2))),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.contain, image: AssetImage(coupon3))),
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Extra\n15% off',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Extra\n20% off',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Extra\n30% off',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
              ],
            ),
          ),

          //---------------------------//
          //ELEVATED BUTTON
          Container(
            margin: EdgeInsets.only(top: 10, right: 0),
            height: 45,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'Book Company-Serviced OYOs',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
