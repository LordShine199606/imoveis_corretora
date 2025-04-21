class UserEntity {
  final int? id;
  final String nome;
  final String email;
  final String senha;
  final String tipoUsuario; // "cliente" ou "proprietario"

  UserEntity({
    this.id,
    required this.nome,
    required this.email,
    required this.senha,
    required this.tipoUsuario,
  });
}
