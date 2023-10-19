import 'package:flutter/material.dart';
import 'package:login_register_ui/components/my_text.dart';
import 'package:login_register_ui/utils/Routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Color(0xff1E232C),
            image: DecorationImage(
              image: AssetImage('images/img.png'),
              fit: BoxFit.cover,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 368,
              ),
              const Image(image: AssetImage('images/Branding.png')),
              const SizedBox(
                height: 43.97,
              ),
              MyText(
                title: 'Login',
                onpress: () {
                  Navigator.pushNamed(context, RoutesName.loginScreen);
                },
              ),
              const SizedBox(
                height: 15,
              ),
              MyText(
                title: 'Register',
                fieldColor: Colors.white,
                textColor: Colors.black,
                onpress: () {
                  Navigator.pushNamed(context, RoutesName.register);
                },
              ),
              const SizedBox(
                height: 46,
              ),
              const Text(
                'Continue as a guest',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff35C2C1)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
