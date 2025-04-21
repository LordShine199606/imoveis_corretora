import 'package:flutter/material.dart';

class ThreeIndicator extends StatelessWidget {
  const ThreeIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          height: double.infinity,
          child: const Image(
            image: AssetImage(
              "assets/img/casa05.jpeg",
            ),
            fit: BoxFit.cover,
          )),
      Column(
        children: [
          // imagem da casa entrada

// Texto
     const      SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 250,
              color: Colors.white,
              child:const  Text(
                "Encontre seu novo lar, com total tranquilidade.",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
