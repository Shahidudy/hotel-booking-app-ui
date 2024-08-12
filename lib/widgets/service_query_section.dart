import 'package:flutter/material.dart';

class ServiceQuerySection extends StatelessWidget {
  const ServiceQuerySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'FAQs',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          fAQsList(querries: 'What is Company-Serviced?'),
          fAQsList(querries: 'How does the Quick check-in\nprocess work?'),
          fAQsList(
              querries:
                  'Are there any exclusive offers\navailablefor booking these\nproperties?'),
          fAQsList(querries: "How do i book a 'Company-Serviced'\nproperty? "),
          fAQsList(querries: 'Can I cancel or modify my booking?'),
          fAQsList(
              querries:
                  'What safety and hygiene measures\narein palce at these properties?')
        ],
      ),
    );
  }

  Widget fAQsList({required String querries}) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            querries,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 35,
                color: Colors.grey[600],
              ))
        ],
      ),
    );
  }
}
