import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class TextFormFieldHelpPage extends StatelessWidget {
  const TextFormFieldHelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      child: IntlPhoneField(
        decoration: InputDecoration(
          labelText: 'Enter mobile number',
          border: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
        initialCountryCode: 'IN',
        onChanged: (phone) {
          print(phone.completeNumber);
        },
      ),
    );
  }
}
