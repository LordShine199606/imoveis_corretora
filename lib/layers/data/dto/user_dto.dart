import 'package:biolo_app/layers/domain/entities/usuario_entity.dart';

class UserDto extends UserEntity {
  UserDto({
    int? id,
    required String nome,
    required String email,
    required String senha,
    required String tipoUsuario,
  }) : super(id: id, nome: nome, email: email, senha: senha, tipoUsuario: tipoUsuario);

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      id: json["id"],
      nome: json["nome"],
      email: json["email"],
      senha: json["senha"],
      tipoUsuario: json["tipoUsuario"], 
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "nome": nome,
      "email": email,
      "senha": senha,
      "tipoUsuario": tipoUsuario,
    };
  }
}
