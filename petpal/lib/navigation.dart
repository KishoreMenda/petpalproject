import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:petpal/home.dart';
import 'package:petpal/login.dart';
import 'package:petpal/signup.dart';
import 'package:petpal/google_login.dart';

class Navigation {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SignupPage());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/home':
        return MaterialPageRoute(
          builder: (_) =>
              HomePage(googleUser: settings.arguments as GoogleSignInAccount?),
        );
      case '/google_login':
        return MaterialPageRoute(builder: (_) => const GoogleSigin());
      default:
        return MaterialPageRoute(builder: (_) => const SignupPage());
    }
  }
}
