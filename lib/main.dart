import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:real_estate_network/screens/congrats.dart';
import 'package:real_estate_network/screens/signup.dart';
import 'package:real_estate_network/screens/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estate Network',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Welcome(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/signup':
            return PageTransition(
                child: SignUp(), type: PageTransitionType.rightToLeftWithFade);
            break;
          case '/congrats':
            return PageTransition(
                child: Congrats(),
                type: PageTransitionType.rightToLeftWithFade);
            break;
          default:
            return null;
        }
      },
    );
  }
}
