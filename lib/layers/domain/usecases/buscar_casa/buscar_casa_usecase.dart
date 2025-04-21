import 'package:biolo_app/layers/data/dto/casa_dto.dart';


abstract class BuscarCasaUsecase {

  CasaDto call (String endereco,String topologiaCasa);
}