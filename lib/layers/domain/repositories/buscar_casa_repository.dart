import 'package:biolo_app/layers/data/dto/casa_dto.dart';

abstract class BuscarCasaRepository {
  CasaDto call(String endereco, String topologiaCasa);
}