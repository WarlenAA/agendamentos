// Gerado automaticamente pelo comando:
//flutter pub run build_runner watch

part of 'agendamento.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AgendamentoAdapter extends TypeAdapter<Agendamento> {
  @override
  final int typeId = 0;

  @override
  Agendamento read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Agendamento(
      id: fields[0] as String,
      cliente: fields[1] as String,
      servico: fields[2] as String,
      dataHora: fields[3] as DateTime,
      observacoes: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Agendamento obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cliente)
      ..writeByte(2)
      ..write(obj.servico)
      ..writeByte(3)
      ..write(obj.dataHora)
      ..writeByte(4)
      ..write(obj.observacoes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AgendamentoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
