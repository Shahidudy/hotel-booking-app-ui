import 'package:flutter/material.dart';

class CompanyServiceContainerSection extends StatelessWidget {
  const CompanyServiceContainerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 25,
      width: 159,
      decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(
            Icons.person_2_outlined,
            size: 20,
          ),
          Text('Company-'),
          Text(
            'Serviced',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
