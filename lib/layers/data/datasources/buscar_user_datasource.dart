import 'package:biolo_app/layers/data/dto/cliente_dto.dart';
import 'package:biolo_app/layers/data/dto/user_dto.dart';

abstract class BuscarUserDatasource {

  UserDto call ( String name , String senha);
}