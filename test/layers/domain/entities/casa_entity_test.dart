 
 import 'package:biolo_app/layers/domain/entities/casa_entity.dart';
import 'package:flutter_test/flutter_test.dart';
 main() {
  test('Espero que retorne alguma valor', () {

   var a = 10;
    expect(a, 10);
    
  });

  test("espero que o valor não seja nulo", (){

    CasaEntity casaEntity = CasaEntity(
      descricaoCAsa: "casa bem avaliada",
      enderecoCasa: "morro bento",
      estadoCasa: true,
      idCasa: 0,
      precoCasa: 50000,
      proprietarioId: 0,
      tipoCasa: "de campo",
      topologiaCasa: "t2",
    );
    expect(casaEntity, isNotNull);
  });

  test("espero que o valor não seja 5000", (){

    CasaEntity casaEntity = CasaEntity(
      descricaoCAsa: "casa bem avaliada",
      enderecoCasa: "morro bento",
      estadoCasa: true,
      idCasa: 0,
      precoCasa: 5000,
      proprietarioId: 0,
      tipoCasa: "de campo",
      topologiaCasa: "t2",
    );

    casaEntity.setLogica();
    var preTotal= 5000;
    expect(casaEntity.precoCasa, preTotal);
  });
}