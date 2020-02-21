import 'package:flutter/material.dart';
import 'package:secure_eye/components/rounded_button.dart';

class RegistrationPage extends StatefulWidget {
  static const String id='registration_page';


  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}
class _RegistrationPageState extends State<RegistrationPage> {
  String email;
  String number;
  String name;
  String id;
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
            Hero(
              tag: 'sky_logo',
              child: Container(
                height: 200,
                child: Image.asset('images/skylogo.png',),
                color: Colors.grey,

              ),
            ),
            SizedBox(height: 10,),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                name=value;
              },
              decoration:InputDecoration(
                icon: Icon(Icons.person,color: Colors.lightBlueAccent),
                hintText: 'Enter your Name',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                id=value;
              },
              decoration:InputDecoration(
                icon: Icon(Icons.email,color: Colors.lightBlueAccent),
                hintText: 'Enter your Email',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                number=value;
              },
              decoration:InputDecoration(
                icon: Icon(Icons.phone,color: Colors.lightBlueAccent),
                hintText: 'Enter your Number',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                   email=value;
                },
                decoration:InputDecoration(
                  icon: Icon(Icons.visibility,color: Colors.lightBlueAccent,),
                  hintText: 'Enter your password',
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
            ),
            SizedBox(height: 12),
            Rounded_button(
              onPressed: (){},
              title: 'Register',
              colour: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}