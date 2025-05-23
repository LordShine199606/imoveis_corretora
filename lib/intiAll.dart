
import 'package:biolo_app/layers/presentation/ui/controller/theme/dark_and_light_switch_controller.dart';
import 'package:biolo_app/layers/presentation/ui/pages/splash_pages/splash_1_page.dart';
import 'package:flutter/material.dart';

import 'layers/presentation/ui/pages/acessoPages/acess_new_register_page.dart';
import 'layers/presentation/ui/pages/acessoPages/login_page.dart';
import 'layers/presentation/ui/pages/home/home.dart';
 
import 'layers/presentation/ui/pages/splash_pages/next_splash_2.dart';

class InitAllPage extends StatelessWidget {
  const InitAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: DarkAndLightThemeController.instaceDark, builder:(context, child) {
     return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biolo',
      
      theme: ThemeData(
      brightness:DarkAndLightThemeController.instaceDark.themeDark ?  Brightness.dark : Brightness.light ,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     initialRoute: '/abertura',
     routes: {
"/abertura":(context)=>const  Splash1Page(),
"/abertura1":(context)=>const  SplasHouseTheme(),
"/principal":(context)=>  PaginaInicial(),
"/acessNewRegisterPage":(context)=>const AcessNewRegisterPage(),
"/login_page":(context)=>const LoginPage(),

     }
    );
    },);
  }
}