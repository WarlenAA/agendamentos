import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../model/agendamento.dart';
import '../controller/controlador_agendamentos.dart';
import 'widgets/botao_personalizado.dart';
import 'widgets/campo_texto_personalizado.dart';
import '../utils/util_datas.dart';

class FormularioAgendamento extends StatefulWidget {
  final Agendamento? agendamento;

  const FormularioAgendamento({super.key, this.agendamento});

  @override
  State<FormularioAgendamento> createState() => _FormularioAgendamentoState();
}

class _FormularioAgendamentoState extends State<FormularioAgendamento> {
  final _formKey = GlobalKey<FormState>();
  late String cliente;
  late String servico;
  DateTime dataHora = DateTime.now();
  String? observacoes;

  final ControladorAgendamentos _controlador = ControladorAgendamentos();

  @override
  void initState() {
    super.initState();
    cliente = widget.agendamento?.cliente ?? '';
    servico = widget.agendamento?.servico ?? '';
    dataHora = widget.agendamento?.dataHora ?? DateTime.now();
    observacoes = widget.agendamento?.observacoes;
  }

  /// Método para selecionar data e hora usando calendário e relógio.
  Future<void> _selecionarDataHora() async {
    DateTime? dataSelecionada = await showDatePicker(
      context: context,
      initialDate: dataHora,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (dataSelecionada != null) {
      TimeOfDay? horaSelecionada = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(dataHora),
      );

      if (horaSelecionada != null) {
        setState(() {
          dataHora = DateTime(
            dataSelecionada.year,
            dataSelecionada.month,
            dataSelecionada.day,
            horaSelecionada.hour,
            horaSelecionada.minute,
            0, // Segundos fixos em 0 ou podemos adicionar mais um seletor se quiser.
          );
        });
      }
    }
  }

  void _salvar() async {
    if (_formKey.currentState!.validate()) {
      final agendamento = Agendamento(
        id: widget.agendamento?.id ?? const Uuid().v4(),
        cliente: cliente,
        servico: servico,
        dataHora: dataHora,
        observacoes: observacoes,
      );

      if (widget.agendamento == null) {
        await _controlador.adicionarAgendamento(agendamento);
      } else {
        await _controlador.atualizarAgendamento(agendamento.id, agendamento);
      }

      if (context.mounted) Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.agendamento == null ? 'Novo Agendamento' : 'Editar Agendamento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CampoTextoPersonalizado(
                rotulo: 'Cliente',
                valorInicial: cliente,
                aoAlterar: (valor) => cliente = valor,
              ),
              const SizedBox(height: 12),
              CampoTextoPersonalizado(
                rotulo: 'Serviço',
                valorInicial: servico,
                aoAlterar: (valor) => servico = valor,
              ),
              const SizedBox(height: 12),
              CampoTextoPersonalizado(
                rotulo: 'Observações',
                valorInicial: observacoes ?? '',
                aoAlterar: (valor) => observacoes = valor,
              ),
              const SizedBox(height: 12),

              // Botão para selecionar data e hora
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Data e Hora: ${UtilDatas.formatarDataHoraCompleta(dataHora)}',
                    style: const TextStyle(fontSize: 14),
                  ),
                  IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: _selecionarDataHora,
                  )
                ],
              ),

              const SizedBox(height: 20),
              BotaoPersonalizado(
                texto: 'Salvar',
                aoPressionar: _salvar,
              )
            ],
          ),
        ),
      ),
    );
  }
}
