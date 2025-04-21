import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'next_splash_2.dart';

class Splash1Page extends StatefulWidget {
  const Splash1Page({super.key});

  @override
  State<Splash1Page> createState() => _Splash1PageState();
}


class _Splash1PageState extends State<Splash1Page> {


  @override
  void initState() {
    
    super.initState();

//   Future.delayed(Duration(seconds: 2)).then((value){
// Navigator.of(context).pushReplacementNamed((""));

//   });
  }
  @override
  Widget build(BuildContext context) {
   return  AnimatedSplashScreen(
    animationDuration: const Duration(seconds: 10),
    splash: Stack(

    children: [
       Center(child: Image.asset("assets/img/casa02.png"),),
      Center(child: LottieBuilder.asset("assets/splah_json/splasr.json")
    
     ) ],
   ), nextScreen:
   
  const   SplasHouseTheme(),
     curve: Curves.bounceIn,
   splashIconSize: 400,
    );
  }
}