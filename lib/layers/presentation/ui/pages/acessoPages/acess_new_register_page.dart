import 'package:biolo_app/layers/presentation/components/colors_const.dart';
import 'package:flutter/material.dart';

class AcessNewRegisterPage extends StatefulWidget {
  const AcessNewRegisterPage({super.key});

  @override
  State<AcessNewRegisterPage> createState() => _AcessNewRegisterPageState();
}

class _AcessNewRegisterPageState extends State<AcessNewRegisterPage> {
  final TextEditingController _nameCliente = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      elevation: 0,
     ),
   
      body: Stack(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 250,
            decoration: BoxDecoration(
               
                // borderRadius:
                //     BorderRadius.only(bottomRight: Radius.circular(200)
                //     ),
                gradient: LinearGradient(colors: [
                  ColorsConst.sunstColor1,
                  // ColorsConst.sunstColor4,
                  Colors.orange,
                ], begin: Alignment.bottomRight, end: Alignment.bottomLeft)),
            child: Container(
              height: 100,
              decoration:  BoxDecoration(
                  border: Border.all(
                    color: Colors.white
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Colors.white),
            ),
          ),
          const SizedBox(
                  height: 120,
                ),
        
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  //  image here
              
              
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 30),
                    child: TextFormField(
                      controller: _nameCliente,
                      decoration: const InputDecoration(
                        hintText: "Nome",
                        enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 30),
                    child: TextFormField(
                      controller: _nameCliente,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        hintText: "email",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 30),
                    child: TextFormField(
                      controller: _nameCliente,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        hintText: "telefone",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 30),
                    child: TextFormField(
                      controller: _nameCliente,
                      decoration: const InputDecoration(
                               
                          enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          prefixIconColor: Colors.amber,
                          hintText: "Senha"),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 30),
                    child: TextFormField(
                      controller: _nameCliente,
                      decoration: const InputDecoration(
                        
                          enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          hintText: "Confirmar a senha"),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Anexar Documento"),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: const Border(
                          bottom: BorderSide(color: Colors.white),
                        ),
                        gradient: LinearGradient(
                            colors: [
                              ColorsConst.sunstColor1,
                              ColorsConst.sunstColor3,
                              Colors.orange,
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.bottomLeft)),
                    child: Center(
                        child: Text(
                      "Cadastrar",
                      style: TextStyle(
                        color: ColorsConst.sunstColor5,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
