import 'package:alert_remedios/model_remedio.dart';

class Agendamento{
  int id;
  String hora;
  String data;
  int idRemedio;

  Agendamento({this.id, this.hora, this.data, this.idRemedio});

  factory Agendamento.fromJson(Map<String, dynamic> json) => Agendamento(
        data: json["data"],
        hora: json["hora"],
        id: json["id"],
        idRemedio: json["idremedio"],
    );

    Map<String, dynamic> toJson() => {
        "data": data,
        "hora": hora,
        "id": id,
        "idremedio": idRemedio,
    };


}