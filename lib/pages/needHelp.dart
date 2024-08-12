import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/need_help/continue_button.dart';
import 'package:hotel_booking_app_ui/widgets/need_help/google_button_section.dart';
import 'package:hotel_booking_app_ui/widgets/need_help/text_form_field.dart';

class NeedhelpPage extends StatefulWidget {
  const NeedhelpPage({super.key});

  @override
  State<NeedhelpPage> createState() => _NeedhelpPageState();
}

class _NeedhelpPageState extends State<NeedhelpPage> {
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
            Image.asset(
              'asset/images/sign-1.jpeg',
              height: 250,
            ),
            Text(
              'Sign in to view this page',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            //TEXT FORM FIELD SECTION
            TextFormFieldHelpPage(),

            //CONTINUE BUTTON SECTION
            ContinueButtonsection(),

            Center(child: Text('OR')),

            //CONTINUE WITH GOOGLE BUTTON SECTION
            GoogleButtonSection(),
          ],
        ),
      ),
    );
  }
}
