import 'package:biolo_app/layers/domain/entities/cliente_entity.dart';

abstract class SalvarUsuarioDatasource {

  Future<bool> call(ClienteEntity clienteEntity);
}