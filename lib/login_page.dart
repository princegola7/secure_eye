import 'package:flutter/material.dart';
import 'package:secure_eye/components/rounded_button.dart';

class LoginPage extends StatefulWidget {
  static const String id='login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email;
  String password;
  static  const accountType = <String>[
    'Owner',
    'User'
  ];
  final List<DropdownMenuItem<String>> _dropDownItems = accountType
      .map((String value) => DropdownMenuItem<String>(
    value: value,
    child: Text(value),
  ),
  ).toList();

  String _btn1SelectedVal = 'Owner';
  String _btn2SelectedVal = 'User';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'sky_logo',
                child: Container(
                  height: 200,
                  child: Image.asset('images/skylogo.png'),
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email=value;
                },
                decoration:InputDecoration(
                  icon: Icon(Icons.email,color: Colors.lightBlueAccent),
                  hintText: 'Enter your email',
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

              //SizedBox(height: 12,),

              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password=value;
                },
                decoration:InputDecoration(
                  icon: Icon(Icons.visibility,color: Colors.black26,),
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
              SizedBox(height: 15,),
              ListTile(

                title: Text('Account Type'),
                trailing: DropdownButton<String>(
                  value: _btn1SelectedVal,
                  onChanged: (String newValue){
                    setState(() {
                      _btn1SelectedVal=newValue;
                    });
                  },
                  items: this._dropDownItems,
                ),
              ),
              SizedBox(height: 12),
              Rounded_button(
                onPressed: (){},
                title: 'Register',
                colour: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),

    );
  }
}
