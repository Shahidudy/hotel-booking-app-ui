import 'package:flutter/material.dart';

Widget myDrawer() {
  return Drawer(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    child: ListView(
      padding: EdgeInsets.only(left: 20),
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.person_3,
                  // size: 20,
                  color: const Color.fromARGB(255, 11, 11, 11),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Guest'),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
              )
            ],
          ),
        ),
        Divider(),
        drawerListTile(
          mainTitle: 'Become an OYO Wizard',
          subTitles: 'Enjoy up to 10% on your bookings',
          myIcon: Icons.double_arrow_sharp,
        ),
        drawerListTile(
          mainTitle: 'Invite & Earn',
          subTitles: 'Refer OYO app and earn OYO\nRupee',
          myIcon: Icons.people,
        ),
        drawerListTile(
          mainTitle: 'View Wallet',
          subTitles: 'Link wallets & check your balance',
          myIcon: Icons.wallet,
        ),
        drawerListTile(
          mainTitle: 'View saved OYOs ',
          myIcon: Icons.favorite_border,
        ),
        drawerListTile(
          mainTitle: 'Long stays in Hyderabad',
          myIcon: Icons.help_center,
        ),
        drawerListTile(
          mainTitle: 'Book for events',
          myIcon: Icons.event,
        ),
        drawerListTile(
          mainTitle: 'Need help',
          myIcon: Icons.help_outline,
        ),
        drawerListTile(
          mainTitle: 'Change language',
          myIcon: Icons.language_sharp,
        ),
        drawerListTile(
          mainTitle: 'View privacy policy ',
          myIcon: Icons.policy,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            'Onboard as a partner',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        drawerListTile(
          mainTitle: 'Travel agent partner',
          myIcon: Icons.person,
        ),
        drawerListTile(
            mainTitle: 'OYO for Business',
            myIcon: Icons.help,
            subTitles: 'Trusted by 5000 Corporates'),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            'Are you a property owner?',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        drawerListTile(
          mainTitle: 'List your property',
          myIcon: Icons.propane_tank_sharp,
        ),
        Text('Version 10.9')
      ],
    ),
  );
}

Widget drawerListTile({
  required String mainTitle,
  required IconData myIcon,
  String subTitles = '',
}) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(myIcon),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainTitle,
                style: TextStyle(fontSize: 18),
              ),
              Text(
                subTitles,
              ),
            ],
          )
        ],
      ),
      SizedBox(
        height: 13,
      ),
    ],
  );
}
