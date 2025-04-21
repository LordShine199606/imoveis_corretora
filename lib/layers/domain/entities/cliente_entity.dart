class ClienteEntity {
   int? idCliente;
   String? nomeCliente;
   String? telefone;
   String? emailCliente;
   String? senhaCliente; // Use um hash para armazenamento seguro
   String? documentoCliente; // Para validação (ex.: NIF ou bi)

  ClienteEntity({
    this.idCliente,
    this.nomeCliente,
    this.emailCliente,
    this.senhaCliente,
    this.documentoCliente, String? telefone, 
   });
}
