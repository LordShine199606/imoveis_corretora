import 'package:biolo_app/layers/data/datasources/local/buscar_casa_local_datasource_imp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {

 final datasource = BuscarCasaLocalDatasourceImp();

  test("Deve retornar jsonCasaPegarTopoo para Benfica e t2", () {
    final result = datasource("Benfica", "t2");
    print("Resultado do teste: ${result.topologiaCasaDto}");
    expect(result.topologiaCasaDto, equals("t2"));
  });

  test("Deve retornar jsonCasaPegarEnd para valores diferentes", () {
    final result = datasource("nova vida", "t4");
    print("Resultado do teste: ${result.topologiaCasaDto}");
    expect(result.topologiaCasaDto, equals("t4"));
  });

  test(
    "traga uma casa com uma topologia qualquer",
    () {
   
 final buscarCasaUsecase = BuscarCasaLocalDatasourceImp();

    
      final pegar = buscarCasaUsecase("Benfica", "t2");
 print("Resultado do teste: ${pegar.topologiaCasaDto}");
      expect(pegar.topologiaCasaDto, equals("t2"));
 
      if (kDebugMode) {
      
      }
    },
  );
}
