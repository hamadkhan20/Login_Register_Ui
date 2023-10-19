import 'package:flutter/material.dart';
import 'package:login_register_ui/components/my_text.dart';
import 'package:login_register_ui/utils/Routes_name.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
                'OTP Verification',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1E232C)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Enter the verification code we just sent on your email address',
                style: TextStyle(fontSize: 15, color: Color(0xff8391A1)),
              ),
              SizedBox(
                height: 32,
              ),
              PinCodeTextField(
                appContext: context,
                length: 5,
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
                obscureText: true,
                enabled: true,
                pinTheme: PinTheme(
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    shape: PinCodeFieldShape.box,
                    selectedFillColor: Colors.black,
                    inactiveColor: Colors.grey,
                    selectedColor: Colors.black),
              ),
              SizedBox(
                height: 34,
              ),
              MyText(
                  title: 'Verify',
                  onpress: () {
                    Navigator.pushNamed(context, RoutesName.resetPassword);
                  }),
              SizedBox(
                height: 340,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn’t received code?',
                    style: TextStyle(
                        color: Color(
                          0xff1E232C,
                        ),
                        fontSize: 15),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.otpVerification);
                    },
                    child: Text(
                      'Resend',
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
      )),
    );
  }
}
