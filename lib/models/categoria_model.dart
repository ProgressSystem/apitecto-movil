import 'dart:convert';

CategoriaModel categoriaModelFromJson(String str) => CategoriaModel.fromJson(json.decode(str));

String categoriaModelToJson(CategoriaModel data) => json.encode(data.toJson());

class CategoriaModel {
  String nombre;
  String url;
  String imagen;

  CategoriaModel({
    this.nombre,
    this.url,
    this.imagen
  });

  factory CategoriaModel.fromJson(Map<String, dynamic> json) => new CategoriaModel(
    nombre: json["nombre"],
    url: json["url"],
    imagen: json["imagen"]
  );

  Map<String, dynamic> toJson() => {
    "nombre": nombre,
    "url": url,
    "imagen": imagen
  };
}
