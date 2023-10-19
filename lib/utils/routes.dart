import 'package:flutter/material.dart';
import 'package:login_register_ui/forgot_password.dart';
import 'package:login_register_ui/home_screen.dart';
import 'package:login_register_ui/login_screen.dart';
import 'package:login_register_ui/otp_verification.dart';
import 'package:login_register_ui/password_changed.dart';
import 'package:login_register_ui/register.dart';
import 'package:login_register_ui/reset_password.dart';
import 'package:login_register_ui/splash_screen.dart';
import 'package:login_register_ui/utils/Routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case RoutesName.register:
        return MaterialPageRoute(builder: (context) => const Register());
      case RoutesName.forgotPassword:
        return MaterialPageRoute(builder: (context) => const ForgotPassword());
      case RoutesName.otpVerification:
        return MaterialPageRoute(builder: (context) => const OtpVerification());
      case RoutesName.resetPassword:
        return MaterialPageRoute(builder: (context) => const ResetPassword());
      case RoutesName.passwordChanged:
        return MaterialPageRoute(builder: (context) => const PasswordChanged());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Text('No Routes defined'),
          );
        });
    }
  }
}
