import 'package:flutter/material.dart';

class TwoIndicator extends StatelessWidget {
  const TwoIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return
    
     Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // imagem da casa entrada
             Container(

                alignment: Alignment.centerLeft,
           
              child: const Column(
                children: [
                   Padding(
                     padding: EdgeInsets.only(left:31),
                     child: Image(
                      image: AssetImage(
                        "assets/img/casa04.png",
                        
                      ), 
                     
                      height: 370,
                                
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.fitHeight,
                      
                                       ),
                   ),
             // Texto 
 Text(
            "Realize o sonho de ter a casa Própria.",
            textAlign: TextAlign.start,
            style: TextStyle(
            
              
              letterSpacing: 1, fontSize: 22,fontWeight: FontWeight.bold),
          ),
          
                ],
              )),



    
        ],
      ),
    );
  }
}
    
   