
import 'package:biolo_app/layers/data/datasources/salvar_usuario_datasource.dart';
import 'package:biolo_app/layers/domain/entities/cliente_entity.dart';

class SalvarUsuarioLocalDatasourceImp implements SalvarUsuarioDatasource {
  @override
  Future<bool> call(ClienteEntity clienteEntity)  async{
 return  clienteEntity.idCliente!>0;
  }
}