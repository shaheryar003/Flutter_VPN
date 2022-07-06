import 'package:flutter/material.dart';
import 'package:vpn/screens/home/home_screen.dart';
import 'package:vpn/screens/home/splash_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/logo/vpn_logo.png",
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}


// now reload app