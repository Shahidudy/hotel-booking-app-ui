import 'package:flutter/material.dart';

class OyoServicePremiumCard extends StatelessWidget {
  const OyoServicePremiumCard(
      {super.key, required this.roomRent, required this.butonText});

  final int roomRent;
  final bool butonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 10,
          ),
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 180,
          // width: 145,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                butonText ? 'Starting from' : 'Company-Serviced',
                style: butonText
                    ? TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)
                    : TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
              ),
              Text(
                butonText ? '₹$roomRent' : '250+ new properties',
                style: butonText
                    ? TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)
                    : TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
              ),
              Text(
                butonText ? '+ taxes' : '',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 2)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 5, bottom: 5),
                  child: Text(
                    butonText ? 'Explore' : "Book now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}
