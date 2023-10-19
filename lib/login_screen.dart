import 'package:flutter/material.dart';
import 'package:login_register_ui/components/my_text.dart';
import 'package:login_register_ui/mytext_field.dart';
import 'package:login_register_ui/utils/Routes_name.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
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
                  'Welcome back! Glad to see you, Again!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1E232C)),
                ),
                SizedBox(
                  height: 32,
                ),
                MytextField(
                  suffixIcon: Icon(null),
                ),
                SizedBox(
                  height: 15,
                ),
                MytextField(
                  title: 'Enter your password',
                  suffixIcon: Icon(Icons.visibility),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.forgotPassword);
                      },
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          decorationThickness: 1,
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                MyText(title: 'Login', onpress: () {}),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Or Login with',
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
                  height: 120,
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
                        Navigator.pushNamed(context, RoutesName.register);
                      },
                      child: Text(
                        'Register Now',
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
