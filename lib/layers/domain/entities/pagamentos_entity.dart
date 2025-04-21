class PagamentosEntity {
  final String? id;
  final String? contratoId;
  final double? valor;
  final DateTime? dataPagamento;
  final String? metodoPagamento; // Exemplo: "Cartão", "transferecia bnc", "transf ou payment express"
  final String? status; // Exemplo: "Pendente", "Concluído"

  PagamentosEntity(
    this.id,
    this.contratoId,
    this.valor,
    this.dataPagamento,
    this.metodoPagamento,
    this.status,
  );

// adicionar um metodo que avalaia se o pagamento esta no valor da casa
}
