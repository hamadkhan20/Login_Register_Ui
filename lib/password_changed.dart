import 'package:flutter/material.dart';
import 'package:login_register_ui/components/my_text.dart';
import 'package:login_register_ui/utils/Routes_name.dart';

class PasswordChanged extends StatefulWidget {
  const PasswordChanged({super.key});

  @override
  State<PasswordChanged> createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image(image: AssetImage('images/Successmark.png'))),
            SizedBox(
              height: 35,
            ),
            Text(
              'Password Changed!',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1E232C)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Your password has been changed\nsuccessfully.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Color(0xff8391A1)),
            ),
            SizedBox(
              height: 40,
            ),
            MyText(
                title: 'Back to Login',
                onpress: () {
                  Navigator.pushNamed(context, RoutesName.loginScreen);
                }),
          ],
        ),
      ),
    );
  }
}
