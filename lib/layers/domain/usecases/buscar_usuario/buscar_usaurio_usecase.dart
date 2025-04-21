
import 'package:biolo_app/layers/data/dto/user_dto.dart';

abstract class BuscarUsaurioUsecase {
UserDto call (String name, String senha);
  
}