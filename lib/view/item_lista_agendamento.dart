import 'package:flutter/material.dart';
import '../model/agendamento.dart';
import '../utils/util_datas.dart';

class ItemListaAgendamento extends StatelessWidget {
  final Agendamento agendamento;
  final VoidCallback aoEditar;
  final VoidCallback aoExcluir;

  const ItemListaAgendamento({
    super.key,
    required this.agendamento,
    required this.aoEditar,
    required this.aoExcluir,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        title: Text(agendamento.cliente),
        subtitle: Text(
          '${agendamento.servico} - ${UtilDatas.formatarDataHoraCompleta(agendamento.dataHora)}',
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(icon: const Icon(Icons.edit), onPressed: aoEditar),
            IconButton(icon: const Icon(Icons.delete), onPressed: aoExcluir),
          ],
        ),
      ),
    );
  }
}
