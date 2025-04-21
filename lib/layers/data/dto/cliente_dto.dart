import 'package:biolo_app/layers/domain/entities/cliente_entity.dart';

class ClienteDto extends ClienteEntity {
  int?    idClienteDto;
  String? nomeClienteDto;
  String? telefoneDto;
  String? emailClienteDto;
  String? senhaClienteDto;
  String? documentoClienteDto;

  ClienteDto(
      {this.idClienteDto,
      this.nomeClienteDto,
      this.telefoneDto,
      this.emailClienteDto,
      this.senhaClienteDto,
      this.documentoClienteDto})
      : super(
          idCliente: idClienteDto,
          nomeCliente: nomeClienteDto,
          telefone: telefoneDto,
          emailCliente: emailClienteDto,
          senhaCliente: senhaClienteDto,
          documentoCliente: documentoClienteDto,
        );

  ClienteDto.fromJson(Map<String, dynamic> json) {
    idClienteDto = json["idClienteBnc"];
    nomeClienteDto = json["nomeClienteBnc"];
    telefoneDto = json["telefoneClienteBnc"];
    emailClienteDto = json["emailClienteBnc"];
    senhaClienteDto = json["senhaClienteBnc"];
    documentoClienteDto = json["documentoClienteBnc"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data["idClienteBnc"] = idClienteDto;
    data["nomeClienteBnc"] = nomeClienteDto;
    data["telefoneClienteBnc"] = telefoneDto;
    data["emailClienteBnc"] = emailClienteDto;
    data["senhaClienteBnc"] = senhaClienteDto;
    data["documentoClienteBnc"] = documentoClienteDto;
    return data;
  }
}
