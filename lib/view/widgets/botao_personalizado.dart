import 'package:flutter/material.dart';

class BotaoPersonalizado extends StatelessWidget {
  final String texto;
  final VoidCallback aoPressionar;

  const BotaoPersonalizado({
    super.key,
    required this.texto,
    required this.aoPressionar,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: aoPressionar,
      child: Text(texto),
    );
  }
}
