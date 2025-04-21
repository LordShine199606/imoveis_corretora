import 'package:biolo_app/layers/data/dto/casa_dto.dart';
import '../buscar_casa_datasource.dart';

class BuscarCasaLocalDatasourceImp implements BuscarCasaDatasource {
  i(kDebugMode) {
    print(
        "****Inicioooooooooooooooooooooooooooooooooooooooooooooo --- aquiiiiiiiiiiii*****");
  }

  final jsonCasaPegarEnd = {
    'idCasa': 0,
    'descricaoDaCasa': 'melhorTos',
    'enderecoCasa': 'Nova Vida',
    'precoDaCasa': 2000.0,
    'estadoDaCasa': true,
    'proprietarioIdCasa': 2,
    'tipoCasa': 'Madeira',
    'topologiaCasa': 't4'
  };
  final jsonCasaPegarTopoo = {
    'idCasa': 1,
    'descricaoDaCasa': 'boa',
    'enderecoCasa': 'Benfica',
    'precoDaCasa': 200.00,
    'estadoDaCasa': false,
    'proprietarioIdCasa': 1,
    'tipoCasa': 'bloco',
    'topologiaCasa': 't2'
  };

  @override
  CasaDto call(String endereco, String topologia) {
    print("Endereço recebido: $endereco");
    print("Topologia recebida: $topologia");
    if (endereco.contains("Benfica") && topologia.contains("t2")) {
      return CasaDto.fromJson(jsonCasaPegarTopoo);
    }
    return CasaDto.fromJson(jsonCasaPegarEnd);
  }
}
