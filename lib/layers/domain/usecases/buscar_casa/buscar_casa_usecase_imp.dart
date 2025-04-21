import 'package:biolo_app/layers/data/dto/casa_dto.dart';
import 'package:biolo_app/layers/domain/usecases/buscar_casa/buscar_casa_usecase.dart';

import '../../repositories/buscar_casa_repository.dart';

class BuscarCasaUsecaseImp implements BuscarCasaUsecase {

  final BuscarCasaRepository _buscarCasaRepository;

  BuscarCasaUsecaseImp(this._buscarCasaRepository);
  
  @override
  CasaDto call(String endereco, String topologiaCasa) {
       return _buscarCasaRepository(endereco, topologiaCasa);
  
  }
}
