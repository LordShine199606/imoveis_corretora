import 'package:biolo_app/layers/data/dto/casa_dto.dart';

abstract class SalvarCasaDatasource {
  Future<bool> call (CasaDto casaDto);
}