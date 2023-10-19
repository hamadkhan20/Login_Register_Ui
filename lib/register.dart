import 'package:flutter/material.dart';
import 'package:login_register_ui/components/my_text.dart';
import 'package:login_register_ui/mytext_field.dart';
import 'package:login_register_ui/utils/Routes_name.dart';
import 'package:url_launcher/url_launcher.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SafeArea(
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
                  height: 18,
                ),
                Text(
                  'Hello! Register to get started',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1E232C)),
                ),
                SizedBox(
                  height: 22,
                ),
                MytextField(
                  title: 'Username',
                  suffixIcon: Icon(null),
                ),
                SizedBox(
                  height: 10,
                ),
                MytextField(
                  title: 'Email',
                  suffixIcon: Icon(null),
                ),
                SizedBox(
                  height: 10,
                ),
                MytextField(
                  title: 'Password',
                  suffixIcon: Icon(null),
                ),
                SizedBox(
                  height: 10,
                ),
                MytextField(
                  title: 'Confirn password',
                  suffixIcon: Icon(null),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                ),
                MyText(title: 'Register', onpress: () {}),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Or Register with',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6A707C)),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        const url = 'https://www.facebook.com/';

                        launchUrl(Uri.parse(url),
                            mode: LaunchMode.externalApplication);
                      },
                      child: Container(
                        height: 56,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xffE8ECF4))),
                        child: Center(
                            child: Image(
                                image: AssetImage('images/facebook_ic.png'))),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    InkWell(
                      onTap: () {
                        const url = 'https://www.google.com/';

                        launchUrl(Uri.parse(url),
                            mode: LaunchMode.externalApplication);
                      },
                      child: Container(
                        height: 56,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xffE8ECF4))),
                        child: Center(
                            child: Image(
                                image: AssetImage('images/google_ic.png'))),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    InkWell(
                      onTap: () {
                        const url = 'https://www.apple.com/';

                        launchUrl(Uri.parse(url),
                            mode: LaunchMode.externalApplication);
                      },
                      child: Container(
                        height: 56,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xffE8ECF4))),
                        child: Center(
                            child: Image(
                                image: AssetImage('images/cib_apple.png'))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: TextStyle(
                          color: Color(
                            0xff1E232C,
                          ),
                          fontSize: 15),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.loginScreen);
                      },
                      child: Text(
                        'Login Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(
                              0xff35C2C1,
                            ),
                            fontSize: 15),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
