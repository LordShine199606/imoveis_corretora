import 'package:biolo_app/layers/data/dto/cliente_dto.dart';
import 'package:biolo_app/layers/data/dto/user_dto.dart';
import 'package:biolo_app/layers/domain/repositories/buscar_user_repository.dart';
import 'package:biolo_app/layers/domain/usecases/buscar_usuario/buscar_usaurio_usecase.dart';

class BuscarUsuarioUsecaseImp implements BuscarUsaurioUsecase {
  final BuscarUserRepository _buscarUserRepository;

  BuscarUsuarioUsecaseImp({required BuscarUserRepository buscarUserRepository}) : _buscarUserRepository = buscarUserRepository;
  @override
  UserDto call(String x, String y) {
   return _buscarUserRepository.call(x, y);
  }
}