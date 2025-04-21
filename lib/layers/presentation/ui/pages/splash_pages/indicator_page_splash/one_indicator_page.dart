import 'package:flutter/material.dart';

class OneIndicator extends StatelessWidget {
  const OneIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    const  Stack(
      children:  [
           SizedBox(
            height: double.infinity,
            
              child: Image(
                image: AssetImage(
                  
                  "assets/img/casa09.png",
                  
                ),fit: BoxFit.cover,
                
             
                
              )),
         Column(
        children: [
          // imagem da casa entrada
          

// Texto
SizedBox(height: 40,),
             Padding(
               padding: EdgeInsets.all(8.0),
               child: Text(
                           "Bem-vindo! Estamos aqui para ajudá-lo a encontrar o lugar perfeito, para si e a sua familia",
                           style: TextStyle( fontSize: 14,fontWeight: FontWeight.bold, ),
                           textAlign:TextAlign.start,
                         ),
             ),
             
// SizedBox(height: 445,),
            
//               Container(
//         decoration: BoxDecoration(
//            color: const Color.fromARGB(255, 172, 165, 141),
//         ),
//                 alignment: Alignment.topRight,
//                 width: 100,
//                 height: 100,
               
//                 )
        ],
      ),
   ] );
  }
}
   