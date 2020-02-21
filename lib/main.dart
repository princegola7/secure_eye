import 'package:flutter/material.dart';
import 'package:secure_eye/registration_page.dart';
import 'landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LandingPage.id,
      routes: {
        LandingPage.id:(context) => LandingPage(),
        RegistrationPage.id:(context) => RegistrationPage(),
      },
    );
  }
}

