import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'model/agendamento.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializando o Hive e registrando o adaptador de Agendamento
  await Hive.initFlutter();
  Hive.registerAdapter(AgendamentoAdapter());

  runApp(const Aplicativo());
}
