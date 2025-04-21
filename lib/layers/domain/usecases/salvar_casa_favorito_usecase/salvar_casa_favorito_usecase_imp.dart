import 'package:biolo_app/layers/domain/entities/casa_entity.dart';
import 'package:biolo_app/layers/domain/repositories/salvar_casa_favorito_repository.dart';
import 'package:biolo_app/layers/domain/usecases/salvar_casa_favorito_usecase/salvar_casa_favorito_usecase.dart';

class SalvarCasaFavoritoUsecaseImp  implements SalvarCasaFavoritoUsecase{

  final SalvarCasaFavoritoRepository _salvarCasaFavoritoRepository;

  SalvarCasaFavoritoUsecaseImp(this._salvarCasaFavoritoRepository);

  @override
  Future<bool> call(CasaEntity casaEntity) async {
 return  await _salvarCasaFavoritoRepository(casaEntity);
  }
}