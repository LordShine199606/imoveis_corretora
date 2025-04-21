import '../../domain/entities/casa_entity.dart';
class CasaDto extends CasaEntity {
  int? idCasaDto;
  String? enderecoCasaDto;
  String? descricaoCAsaDto;
  double? precoCasaDto;
  String? tipoCasaDto;
  String? topologiaCasaDto;
  bool? estadoCasaDto;
  int? proprietarioIdDto;

  CasaDto({
    this.idCasaDto,
    this.enderecoCasaDto,
    this.descricaoCAsaDto,
    this.precoCasaDto,
    this.tipoCasaDto,
    this.topologiaCasaDto,
    this.estadoCasaDto,
    this.proprietarioIdDto,
  }) : super(
    idCasa: idCasaDto,
    descricaoCAsa: descricaoCAsaDto,
    enderecoCasa: enderecoCasaDto,
    precoCasa: precoCasaDto,
    estadoCasa: estadoCasaDto,
    proprietarioId: proprietarioIdDto,
    tipoCasa: tipoCasaDto,
    topologiaCasa: topologiaCasaDto,
  );

  CasaDto.fromJson(Map<String, dynamic> json)  {
    idCasaDto = json["idCasa"];
    descricaoCAsaDto = json["descricaoDaCasa"];
    enderecoCasaDto = json["enderecoCasa"];
    precoCasaDto = json["precoDaCasa"];
    estadoCasaDto = json["estadoDaCasa"];
    proprietarioIdDto = json["proprietarioIdCasa"];
    tipoCasaDto = json["tipoCasa"];
    topologiaCasaDto = json["topologiaCasa"];
  }

  Future<Map<String, dynamic>> toJson() async {
    return {
      "idCasa": idCasaDto,
      "descricaoDaCasa": descricaoCAsaDto,
      "enderecoCasa": enderecoCasaDto,
      "precoDaCasa": precoCasaDto,
      "estadoDaCasa": estadoCasaDto,
      "proprietarioIdCasa": proprietarioIdDto,
      "tipoCasa": tipoCasaDto,
      "topologiaCasa": topologiaCasaDto,
    };
  }
}
