import 'package:biolo_app/layers/data/repositories/salvar_casa_repository_imp.dart';
import 'package:biolo_app/layers/domain/entities/casa_entity.dart';
import 'package:biolo_app/layers/domain/usecases/salvar_casa_favorito_usecase/salvar_casa_favorito_usecase.dart';
import 'package:biolo_app/layers/domain/usecases/salvar_casa_favorito_usecase/salvar_casa_favorito_usecase_imp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Espero que   salve a casa",() async{

SalvarCasaFavoritoUsecase salvarCasaFavoritoRepository = SalvarCasaFavoritoUsecaseImp(SalvarCasaFavoritoRepositoryImp());

   var casasalvar = CasaEntity(
        idCasa: 1,
        proprietarioId: 1,
        enderecoCasa: "Mutamba",
        estadoCasa: false,
        tipoCasa: "campo",
        topologiaCasa: "t1",
        precoCasa: 20000,
        descricaoCAsa: "w",
      );
      var esperoSalvo =await salvarCasaFavoritoRepository(casasalvar);

expect(esperoSalvo, true);
if (kDebugMode) {
  print("a casa do endereco ${casasalvar.enderecoCasa} foi salva");
}
} );

test("Espero que não salve a casa",() async{

SalvarCasaFavoritoUsecase salvarCasaFavoritoRepository = SalvarCasaFavoritoUsecaseImp(SalvarCasaFavoritoRepositoryImp());

   var casasalvar = CasaEntity(
        idCasa: 1,
        proprietarioId: 1,
        enderecoCasa: "Benfica",
        estadoCasa: false,
        tipoCasa: "campo",
        topologiaCasa: "t1",
        precoCasa: 0,
        descricaoCAsa: "w",
      );
      var esperoSalvo =await salvarCasaFavoritoRepository(casasalvar);

expect(esperoSalvo, false);
if (kDebugMode) {
  print("a casa do endereco ${casasalvar.enderecoCasa} não foi  salva");
}
} );
}