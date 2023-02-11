import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tayyab_fyp_testing/Login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5),()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Login_page())));




  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              width: 300.0,
              child: Lottie.asset("assets/a.json"),

            ),

            SizedBox(height: 20,),

            Text("Water Quality Testing Application" , style: TextStyle(
              color: Color.fromRGBO(41, 218, 204,1),
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 2
            ),),

            SizedBox(height: 40,),

            Container(
              width: 100.0,
              child: Lottie.asset("assets/b.json"),

            ),


          ],
        ),
      ),
    );
  }
}
