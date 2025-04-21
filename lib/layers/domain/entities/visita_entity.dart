class VisitaEntity {
  final String? id;
  final String? clienteId;
  final String? casaId;
  final DateTime? dataHora;
  final String? status; // Exemplo: "Pendente", "Confirmada", "Cancelada"

  VisitaEntity(
    this.id,
    this.clienteId,
    this.casaId,
    this.dataHora,
    this.status,
  );
}
