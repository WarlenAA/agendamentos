import 'package:flutter/material.dart';
import '../controller/controlador_agendamentos.dart';
import '../model/agendamento.dart';
import 'formulario_agendamento.dart';
import 'item_lista_agendamento.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  final ControladorAgendamentos _controlador = ControladorAgendamentos();
  List<Agendamento> _agendamentos = [];

  @override
  void initState() {
    super.initState();
    _carregarAgendamentos();
  }

  Future<void> _carregarAgendamentos() async {
    final agendamentos = await _controlador.listarAgendamentos();
    setState(() {
      _agendamentos = agendamentos;
    });
  }

  void _abrirFormulario({Agendamento? agendamento}) async {
    final resultado = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => FormularioAgendamento(agendamento: agendamento),
      ),
    );

    if (resultado == true) {
      _carregarAgendamentos();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agendamentos')),
      body: ListView.builder(
        itemCount: _agendamentos.length,
        itemBuilder: (_, index) {
          return ItemListaAgendamento(
            agendamento: _agendamentos[index],
            aoEditar: () => _abrirFormulario(agendamento: _agendamentos[index]),
            aoExcluir: () async {
              await _controlador.removerAgendamento(_agendamentos[index].id);
              _carregarAgendamentos();
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _abrirFormulario(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
