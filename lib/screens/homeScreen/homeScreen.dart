import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_register_screen/screens/loginScreen/loginScreen.dart';
import 'package:login_register_screen/screens/registerScreen/registerScreen.dart';

import '../../components.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Material(
            shadowColor: Colors.black,
            elevation: 5,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150)),
            color: kPrimaryColorTwo,
            child: Container(
              height: size.height * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('assets/logo.png'),
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: size.height * 0.15),
                  CustomElevatedButton(
                    () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ), (route) => false);
                    },
                    'Login',
                  ),
                  SizedBox(height: 20),
                  CustomElevatedButton(
                    () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context) {
                          return RegisterScreen();
                        },
                      ), (route) => false);
                    },
                    'Register',
                  ),
                ],
              ),
            ),
          ),
          Text(
            'Copyrights 2021',
            style: TextStyle(color: kPrimaryColorTwo),
          ),
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final Function press;
  final String text;

  CustomElevatedButton(this.press, this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: Text(text),
      style: ElevatedButton.styleFrom(
          primary: kPrimaryColorTwo,
          padding: EdgeInsets.symmetric(vertical: 15),
          elevation: 5,
          shadowColor: Colors.black),
    );
  }
}
