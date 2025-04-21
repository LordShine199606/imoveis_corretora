import 'package:biolo_app/layers/domain/entities/casa_entity.dart';

abstract class SalvarCasaFavoritoRepository {

  Future <bool> call(CasaEntity casaEntity);
}