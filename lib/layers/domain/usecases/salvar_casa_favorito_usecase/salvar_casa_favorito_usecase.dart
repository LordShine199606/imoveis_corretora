import 'package:biolo_app/layers/domain/entities/casa_entity.dart';

abstract class SalvarCasaFavoritoUsecase {
  Future<bool> call (CasaEntity casaEntity);
}