import 'package:flutter/material.dart';
import 'package:login_register_screen/screens/loginScreen/loginScreen.dart';
import '../../../components.dart';

class AlreadyAccount extends StatelessWidget {
  const AlreadyAccount();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Already have an Account?',
          style: TextStyle(color: kPrimaryColorTwo),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
              builder: (context) {
                return LoginScreen();
              },
            ), (route) => false);
          },
          child: Text(
            'Login',
            style: TextStyle(
              color: kPrimaryColorTwo,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
