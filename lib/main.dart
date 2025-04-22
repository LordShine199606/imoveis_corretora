import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'core/inject/inject.dart';
import 'intiAll.dart';
Future<void> main()  async{

  ModularApp(module: , child: null,)
  print("antes de iniciar o inject");
 Inject.init();
  print("depois de iniciar o inject");

  runApp(const InitAllPage());
}


