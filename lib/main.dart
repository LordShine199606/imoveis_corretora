import 'package:flutter/material.dart';
import 'core/inject/inject.dart';
import 'intiAll.dart';
Future<void> main()  async{
  print("antes de iniciar o inject");
 Inject.init();
  print("depois de iniciar o inject");

  runApp(const InitAllPage());
}

