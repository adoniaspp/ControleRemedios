class Remedio {
  final int id;
  final String descricao;
  final String imagem;

  Remedio({this.id, this.descricao, this.imagem});

   factory Remedio.fromJson(Map<String, dynamic> json) => Remedio(
        descricao: json["descricao"],
        id: json["id"],
        imagem: json["imagem"],
    );

    Map<String, dynamic> toJson() => {
        "descricao": descricao,
        "id": id,
        "imagem": imagem,
    };

}
