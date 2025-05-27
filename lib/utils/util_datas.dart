import 'package:intl/intl.dart';

class UtilDatas {
  /// Formata a data e hora no padrão: dd-MM-yyyy , HH:mm:ss
  static String formatarDataHoraCompleta(DateTime dataHora) {
    return DateFormat('dd-MM-yyyy , HH:mm:ss').format(dataHora);
  }
}
