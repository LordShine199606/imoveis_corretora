import 'package:biolo_app/layers/presentation/components/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'indicator_page_splash/one_indicator_page.dart';
import 'indicator_page_splash/three_indicator_page.dart';
import 'indicator_page_splash/two_indicator_page.dart';


class SplasHouseTheme extends StatefulWidget {
  const SplasHouseTheme({super.key});

  @override
  State<SplasHouseTheme> createState() => _SplasHouseThemeState();
}

class _SplasHouseThemeState extends State<SplasHouseTheme> {
  bool onLastPageController = false;
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPageController == (index == 2);
              });
            },
            children:const [
              OneIndicator(),
              TwoIndicator(),
               ThreeIndicator(),
            ],
          ),
          Container(
              alignment:const Alignment(0, 0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Skip button
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed("/login_page");
                    },
                    child: Text("Pular", style:  TextStyle(color: PaletColors.sunstColorNew1,fontWeight: FontWeight.bold),),
                  ),

                  SmoothPageIndicator(
                    effect:  ColorTransitionEffect(spacing: 5,radius: 10,dotColor: PaletColors2.sunstColorNew4, activeDotColor: PaletColors.sunstColorNew1),
                    controller: _controller, count: 3),
                  // next button
                onLastPageController ?
                  GestureDetector(
                    onTap: () {
                       Navigator.of(context).pushNamed("/login_page");
                    },
                    child:const  Text("Começar", style:  TextStyle(color: Colors.orange),),
                  
                  )
                  :
                   GestureDetector(
                    onTap: () {
                      _controller.nextPage(duration: const Duration(milliseconds: 500), curve:Curves.decelerate);
                    },
                    child:  Text("Próximo", style:  TextStyle(color: PaletColors.sunstColorNew1,fontWeight: FontWeight.bold),),
                  ),
                ],
              )),

        ],
      ),
    );
  }
}
