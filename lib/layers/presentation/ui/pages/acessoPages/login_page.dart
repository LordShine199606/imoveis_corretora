import 'package:flutter/material.dart';

import '../../../components/colors_const.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _txtLoginController = TextEditingController();
  TextEditingController _txtSenhaController = TextEditingController();

  bool _obscureText = true;
  bool _valor= true;

  void _ConfirmVisbilit() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
   void _checkbosValue() {
    setState(() {
      _valor = !_valor;
    });
  }
  void ConfirmLogin() async{
    
    var addNamr;
    if ( _txtLoginController !=null && _txtSenhaController !=null){
_txtLoginController.addListener(addNamr);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              ColorsConst.sunstColor1,
              ColorsConst.sunstColor4,
            
            ], begin: Alignment.bottomRight, end: Alignment.bottomLeft)),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
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
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const Text(
                      "Entre na sua conta",
                      style: TextStyle(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //  image here

                    // campos de preenchimento
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 30),
                      child: TextFormField(

                         controller: _txtLoginController,
                        decoration: const InputDecoration(
                        
                          hintText: "Email ou telefone",

                            focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            
                          ),
                          enabledBorder: OutlineInputBorder(
                            
                            
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 30),
                      child: TextFormField(
                        controller: _txtSenhaController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                _ConfirmVisbilit();
                              },
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              )),
                              focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            
                          ), 
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          hintText: "Senha",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    // esqueceu a sneha

                    const SizedBox(
                      height: 10,
                    ),

Padding(
  padding: const EdgeInsets.only(left: 25),
  child: Row(
    
    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Checkbox(value: _valor, onChanged: (value){
          
          setState(() {
           _checkbosValue();
          });
          }),
          const Text("Lembrar-me"),
        ],
      ),
      

    
    
    Padding(
      padding: const EdgeInsets.only(right: 35),
      child: GestureDetector(
        onTap: (){

      Navigator.of(context).pushNamed("/acessNewRegisterPage");
        },
        child: Text("Criar conta"),
      ),
    )
    ],
  ),
),
                        const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/principal");
                      },
                      child: Container(
                        height: 60,
                        width: 350,
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
                          "ENTRAR",
                          style: TextStyle(
                            color: ColorsConst.sunstColor5,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Ou",
                      style: TextStyle(),
                    ),
                      const SizedBox(
                      height: 20,
                    ),
                     GestureDetector(

                       child: Container(
                         height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: const Border(
                              top: BorderSide(color: Colors.black),
                              bottom: BorderSide(color: Colors.black
                            
                              ),
                       
                            ),
                                ),
                       
                        child:const  Image(
                          image: AssetImage(
                            "assets/img/icon/icon_google.png",
                          ),
                          height: 10,
                        ),
                                           ),
                     )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
