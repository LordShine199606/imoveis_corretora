
import 'package:biolo_app/layers/data/datasources/local/buscar_casa_local_datasource_imp.dart';
import 'package:biolo_app/layers/data/repositories/buscar_casa_repository_imp.dart';
import 'package:biolo_app/layers/domain/repositories/buscar_casa_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
 
  BuscarCasaRepository buscarCasaRepository = BuscarCasaRepositoryImp(BuscarCasaLocalDatasourceImp());
  test("Me devolva uma casa Salva indepentemente  da topologia ou endereco",
      () {
    var casaResul = buscarCasaRepository("Morro Bento", "T3");
    expect(casaResul, isNotNull);
  });
}
