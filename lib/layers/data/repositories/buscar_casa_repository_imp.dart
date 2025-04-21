

import 'package:biolo_app/layers/data/datasources/buscar_casa_datasource.dart';

import '../../domain/repositories/buscar_casa_repository.dart';

import '../dto/casa_dto.dart';

  class BuscarCasaRepositoryImp implements BuscarCasaRepository{
   final BuscarCasaDatasource _buscarCasaDatasource;
BuscarCasaRepositoryImp(this._buscarCasaDatasource);
    @override
    CasaDto call(String endereco, String topologiaCasa) {
      return _buscarCasaDatasource(endereco, topologiaCasa);
    }

  }