import 'package:flutter/material.dart';
import 'package:secure_eye/components/rounded_button.dart';
import 'package:secure_eye/registration_page.dart';
import 'package:secure_eye/login_page.dart';
class LandingPage extends StatefulWidget {

  static const String id='landing_page';
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
                    child: Hero(
                      tag: 'sky_logo',
                      child: Container(
                        child: Image.asset('images/skylogo.png'),
                        height: 60.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    'Secure Eye',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            Rounded_button(title: 'Log In'
              ,colour: Colors.grey[500],onPressed: (){
             Navigator.pushNamed(context,LoginPage.id );
            }),
            Rounded_button(title: 'Register',colour: Colors.grey[500], onPressed: (){
              Navigator.pushNamed(context, RegistrationPage.id);
            })
          ],
        ),
      ),
    );

  }
}
