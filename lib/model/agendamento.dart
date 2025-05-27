import 'package:hive/hive.dart';

part 'agendamento.g.dart';

@HiveType(typeId: 0)
class Agendamento extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String cliente;

  @HiveField(2)
  String servico;

  @HiveField(3)
  DateTime dataHora;

  @HiveField(4)
  String? observacoes;

  Agendamento({
    required this.id,
    required this.cliente,
    required this.servico,
    required this.dataHora,
    this.observacoes,
  });
}
