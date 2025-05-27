import 'package:hive/hive.dart';
import 'agendamento.dart';

class RepositorioAgendamentos {
  static const String _caixaNome = 'agendamentos';

  Future<Box<Agendamento>> _abrirCaixa() async {
    return await Hive.openBox<Agendamento>(_caixaNome);
  }

  Future<List<Agendamento>> obterTodos() async {
    final caixa = await _abrirCaixa();
    final agendamentos = caixa.values.toList();
    agendamentos.sort((a, b) => a.dataHora.compareTo(b.dataHora));
    return agendamentos;
  }

  Future<void> adicionar(Agendamento agendamento) async {
    final caixa = await _abrirCaixa();
    await caixa.put(agendamento.id, agendamento);
  }

  Future<void> atualizar(String id, Agendamento agendamentoAtualizado) async {
    final caixa = await _abrirCaixa();
    await caixa.put(id, agendamentoAtualizado);
  }

  Future<void> remover(String id) async {
    final caixa = await _abrirCaixa();
    await caixa.delete(id);
  }
}
