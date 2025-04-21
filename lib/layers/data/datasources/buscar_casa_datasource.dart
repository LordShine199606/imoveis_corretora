import 'package:biolo_app/layers/data/dto/casa_dto.dart';

abstract class BuscarCasaDatasource {

 CasaDto call(String endereco, String topologia);
}