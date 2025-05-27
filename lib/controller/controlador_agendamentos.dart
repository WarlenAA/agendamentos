import '../model/agendamento.dart';
import '../model/repositorio_agendamentos.dart';

class ControladorAgendamentos {
  final RepositorioAgendamentos _repositorio = RepositorioAgendamentos();

  Future<List<Agendamento>> listarAgendamentos() {
    return _repositorio.obterTodos();
  }

  Future<void> adicionarAgendamento(Agendamento agendamento) {
    return _repositorio.adicionar(agendamento);
  }

  Future<void> atualizarAgendamento(String id, Agendamento agendamento) {
    return _repositorio.atualizar(id, agendamento);
  }

  Future<void> removerAgendamento(String id) {
    return _repositorio.remover(id);
  }
}
