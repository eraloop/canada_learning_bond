import 'package:clb/home/clb_partners.dart';
import 'package:clb/home/clb_resources.dart';
import 'package:clb/home/clb_resources/social_insurance_number.dart';
import 'package:clb/home/clb_resources/tax_clinic_location.dart';
import 'package:clb/home/clb_support.dart';
import 'package:clb/home/eligibility_check.dart';
import 'package:clb/home/landingscreen.dart';
import 'package:clb/home/profile.dart';
import 'package:clb/home/resp_promoters.dart';
import 'package:clb/home/resp_support.dart';
import 'package:clb/home/resp_support/how_it_works.dart';
import 'package:clb/home/resp_support/types.dart';
import 'package:clb/onboarding/auth/home_auth.dart';
import 'package:clb/onboarding/splashscreen.dart';
import 'package:clb/profile/contact_us.dart';
import 'package:flutter/material.dart';

import 'onboarding/auth/login.dart';
import 'onboarding/auth/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Canada Learning Bond',
      theme: ThemeData(
        primaryColor: Color(0xffFFA500),
        accentColor: Color(0xff790252),
        backgroundColor: Color(0xffFFA500).withOpacity(0.15),
        unselectedWidgetColor: Color(0xffeeeeee),
        primaryColorDark: Color(0xff000000),
        primaryColorLight: Color(0xffffffff),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),

        fontFamily: 'OpenSans',
        textTheme:  const TextTheme(
          // body text styles
          bodyText1:  TextStyle(
            color: Color(0xff790252),
            fontFamily: 'OpenSans',
            fontStyle: FontStyle.normal,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            height: 1.5,
          ),
          bodyText2: TextStyle(
              color: Color(0xffdedede),
              fontFamily: 'OpenSans',
              height: 1.5,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w300,
              fontSize: 13),
          // heading styles
          headline1: TextStyle(
              color: Color(0xffFFA500),
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontSize: 30,
              fontWeight: FontWeight.w600),
          // for secondary headers that are black
          headline2: TextStyle(
              color: Color(0xff000000),
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontSize: 25,
              fontWeight: FontWeight.w700),
          // for secondary headers that are purple
          headline3: TextStyle(
              color: Color(0xff000000),
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          // used for buttons
          headline4: TextStyle(
              color: Color(0xff000000),
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.4),
          headline5: TextStyle(
              color: Color(0xffFFA500),
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          headline6: TextStyle(
              color: Color(0xff000000),
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.4),
        ),
      ),
      home: HomeAuth(),
    );
  }
}
