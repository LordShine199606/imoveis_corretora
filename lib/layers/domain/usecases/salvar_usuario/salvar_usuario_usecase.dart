import '../../entities/cliente_entity.dart';

abstract class SalvarUsuarioNovo {

  Future<bool> call(ClienteEntity clienteEntity);
}