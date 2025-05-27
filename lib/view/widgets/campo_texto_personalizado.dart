import 'package:flutter/material.dart';

class CampoTextoPersonalizado extends StatelessWidget {
  final String rotulo;
  final String valorInicial;
  final ValueChanged<String> aoAlterar;

  const CampoTextoPersonalizado({
    super.key,
    required this.rotulo,
    required this.valorInicial,
    required this.aoAlterar,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: valorInicial,
      decoration: InputDecoration(labelText: rotulo),
      validator: (valor) => valor == null || valor.isEmpty ? 'Campo obrigatório' : null,
      onChanged: aoAlterar,
    );
  }
}
