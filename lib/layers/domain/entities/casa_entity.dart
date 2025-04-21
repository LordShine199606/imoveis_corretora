

class CasaEntity {
  int? idCasa;
  String? enderecoCasa;
  String? descricaoCAsa;
  double? precoCasa;
  String? tipoCasa;
  String? topologiaCasa;
  bool? estadoCasa;
  int? proprietarioId;

  CasaEntity(
      {this.idCasa,
      this.enderecoCasa,
      this.descricaoCAsa,
      this.precoCasa,
      this.tipoCasa,
      this.topologiaCasa,
      this.estadoCasa,
      this.proprietarioId});

  setLogica() {
    if (precoCasa! >= 1000) {
      precoCasa != precoCasa! * 2;
    }
  }
}
