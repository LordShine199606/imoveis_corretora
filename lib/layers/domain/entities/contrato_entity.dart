class ContratoEntity {
  final String? id;
  final String? casaId;
  final String? clienteId;
  final DateTime? dataInicio;
  final DateTime dataFim; // Apenas para aluguel
  final String? tipo; // "Venda" ou "Aluguel"
  final bool renovado;

  ContratoEntity(
    this.id,
    this.casaId,
    this.clienteId,
    this.dataInicio,
    this.dataFim,
    this.tipo, 
    this.renovado,
  );


  int diasPraRenovar (){
    final agora = dataFim;
    return dataFim.difference(agora).inDays;
  }

  bool podeRenovar(){
    final agora = DateTime.now();
    return dataFim.isBefore(agora)|| dataFim.difference(agora).inDays <=7;
  }
}
 