import 'package:biolo_app/layers/domain/entities/cliente_entity.dart';

abstract class SalvarUsuarioRepository {

  Future<bool> call(ClienteEntity clienteEntity);
}