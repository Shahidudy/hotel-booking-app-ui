import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Bookingspage extends StatefulWidget {
  const Bookingspage({super.key});

  @override
  State<Bookingspage> createState() => _BookingspageState();
}

class _BookingspageState extends State<Bookingspage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.badge_outlined,
              size: 200,
            ),
            Text(
              'Sign in to view bookings',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            //TEXTFORMFIELD SECTION
            textFormFieldSection(),

            //CONTINUE BUTTON SECTION
            continueButtonSection(),

            Center(child: Text('OR')),

            //CONTINUE WITH GOOGLE BUTTON SECTION
            continueWithGoogleButton(),
          ],
        ),
      ),
    );
  }

  Widget textFormFieldSection() {
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

  Widget continueButtonSection() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          'Continue',
          // textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }

  Widget continueWithGoogleButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(),
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        'Continue with Google',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      )),
    );
  }
}
