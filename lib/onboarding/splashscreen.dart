import 'dart:async';

import 'package:clb/helper/app_utils.dart';
import 'package:clb/home/landingscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    // Timer(const Duration(seconds: 4), () {
    //
    //     Navigator.pushAndRemoveUntil(
    //         context,
    //         MaterialPageRoute(builder: (context) => const LandingScreen()),
    //             (route) => false);
    //
    // });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50),
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  FittedBox(
                    child: Image.asset("assets/images/student-studying-in-classroom.jpg",
                    height: 150, width: 150),
                  ),
                   Text("CLB POST \nSECONDARY",
                   textAlign: TextAlign.center,
                   style: Theme.of(context).textTheme.headline1,)
                ],
              ),
              Container(
                child: Column(

                  children:  <Widget> [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: CircularProgressIndicator(

                          color: AppUtils.SecondaryColor,
                          strokeWidth : 5.0,

                        ),
                      ),
                    ),
                    const Text("Copyright, All rights reserved",
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'OpenSans',
                        height: 1.5,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                        fontSize: 13),),
                     Text("CLB POST SECONDARY 2022",
                      style: TextStyle(
                          color: Color(0xff000000).withOpacity(0.6),
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          ),)
                  ],
                ),
              )
            ],
        ),
      ),
    );
  }
}
