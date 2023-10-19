import 'package:flutter/material.dart';
import 'package:login_register_ui/components/my_text.dart';
import 'package:login_register_ui/mytext_field.dart';
import 'package:login_register_ui/utils/Routes_name.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 41,
                  width: 41,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffE8ECF4)),
                      color: Color(0xffFFFFFF)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Center(child: Icon(Icons.arrow_back_ios)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                'Create new password',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1E232C)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Your new password must be unique from those previously used.',
                style: TextStyle(fontSize: 15, color: Color(0xff8391A1)),
              ),
              SizedBox(
                height: 32,
              ),
              MytextField(
                title: 'New Password',
                suffixIcon: Icon(null),
              ),
              SizedBox(
                height: 15,
              ),
              MytextField(
                title: 'Confirm password',
                suffixIcon: Icon(null),
              ),
              SizedBox(
                height: 38,
              ),
              MyText(
                  title: 'Reset Password',
                  onpress: () {
                    Navigator.pushNamed(context, RoutesName.passwordChanged);
                  }),
              SizedBox(
                height: 340,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
