import 'package:biolo_app/layers/data/datasources/local/salvar_usuario_local_datasource_imp.dart';
import 'package:biolo_app/layers/domain/entities/cliente_entity.dart';
import 'package:biolo_app/layers/domain/repositories/salvar_usuario_repository.dart';

class SalvarUsuarioRepositoryImp  implements SalvarUsuarioRepository{
 final SalvarUsuarioLocalDatasourceImp _salvarUsuarioLocalDatasourceImp;

  SalvarUsuarioRepositoryImp(this._salvarUsuarioLocalDatasourceImp);
  @override
  Future<bool> call(ClienteEntity clienteEntity) async {
  return  _salvarUsuarioLocalDatasourceImp(clienteEntity); 
  }
}