import '../../domain/entities/casa_entity.dart';
import '../../domain/repositories/salvar_casa_favorito_repository.dart';

class SalvarCasaFavoritoRepositoryImp implements SalvarCasaFavoritoRepository{
  
  @override
  Future<bool> call(CasaEntity casaEntity) async {
  return casaEntity.precoCasa !>0 ;
  }

}