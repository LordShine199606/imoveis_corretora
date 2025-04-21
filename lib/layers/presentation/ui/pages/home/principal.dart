import 'package:biolo_app/layers/presentation/components/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../controller/auth/cad_casa_controller.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  List<String> nameCategorie = [
    "Luanda",
    "Benguela",
    "Kwanza Sul",
    "Namibe",
    "Malanje",
    "Bengo"
  ];
  Map<String, dynamic> houseInfo = {
    
    "Nome": "CasaNovaRu"
    
    };

  int? _itemSelected;
  String titlePric = "Intermediario_user";
  var cadCasaController = GetIt.I.get<CadCasaController>();

  void _onTypeItemSlect(index) {
    setState(() {
      _itemSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Miguel Manuel"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          height: 30,
                          width: 30,
                          child: SizedBox(
                            height: 10,
                            width: 10,
                            child: Image.asset(
                              "assets/img/icon/icon_menu.png",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            "assets/img/icon/icon_notify.png",
                            height: 5,
                            width: 5,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: nameCategorie.length,
                itemBuilder: (context, index) {
                  final itemSel = _itemSelected == index;
                  return GestureDetector(
                    onTap: () {
                      _onTypeItemSlect(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color:
                              itemSel ? ColorsConst.sunstColor7 : Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      alignment: Alignment.center,
                      height: 50,
                      width: 100,
                      child: Text(
                        nameCategorie[index],
                        style: TextStyle(
                            color: itemSel ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: 500,
            child: ListView(
              
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(10),
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: ColorsConst.sunstColor2.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20)),
                  height: 200,
                  child: Column(
                    children: [
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // texto
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.location_on),
                                        Text("Estamos perto de você!"),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Casa de madeira",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 05),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.star),
                                          Text("4.8 *128 Views"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        width: 80,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all()),
                                        child: const Center(
                                            child: Text(
                                          "Explorar",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Image.asset(
                                "assets/img/homepage/House.png",
                                height: 180,
                                width: 170,
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ColorsConst.sunstColor9.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 200,
                      width: 180,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Text("Vivenda",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height: 70,
                                ),
                                Icon(Icons.add_circle)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: Image.asset(
                              "assets/img/homepage/House.png",
                              fit: BoxFit.cover,
                              height: 140,
                              width: 100,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: ColorsConst.sunstColor9.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 200,
                      width: 180,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Text("casa de Campo",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height: 70,
                                ),
                                Icon(Icons.add_circle)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: Image.asset(
                              "assets/img/homepage/House.png",
                              fit: BoxFit.cover,
                              height: 140,
                              width: 100,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Casas que talvez gostes',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 300,
                  child: ListView(
                    
                    scrollDirection: Axis.horizontal,
                    children:  [

   
                       Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       width: 200,
                      height: 40,
                      color: Colors.amber,
                      child: Text("Aberto")),
                   ),
                      Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                     width: 200,
                      height: 40,
                      color: Colors.amber,
                      child: Text("Aberto")),
                   ),
                       Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      width: 100,
                      height: 40,
                      color: Colors.amber,
                      child: Text("Aberto")),
                   ),
               

                 ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
