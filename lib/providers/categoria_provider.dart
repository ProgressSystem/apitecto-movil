import 'package:flutter/material.dart';
import 'package:appitectoapp/models/categoria_model.dart';

class CategoriaProvider extends ChangeNotifier {
  List<CategoriaModel> _categorias = new List();

  CategoriaProvider() {
    _cargarCategorias();
  }

  List<CategoriaModel> get categorias => _categorias;

  _cargarCategorias() {
    final cat1 = new CategoriaModel(
      nombre: 'Arquitectura',
      imagen: 'assets/categorias/arquitectura.png',
      url: ''
    );
    final cat2 = new CategoriaModel(
      nombre: 'Interiores',
      imagen: 'assets/categorias/interiores.png',
      url: ''
    );
    final cat3 = new CategoriaModel(
      nombre: 'Carpintería',
      imagen: 'assets/categorias/carpinteria.png',
      url: ''
    );
    final cat4 = new CategoriaModel(
      nombre: 'Plomería',
      imagen: 'assets/categorias/plomeria.png',
      url: ''
    );
    final cat5 = new CategoriaModel(
      nombre: 'Construcción',
      imagen: 'assets/categorias/construccion.png',
      url: ''
    );
    final cat6 = new CategoriaModel(
      nombre: 'Pintura',
      imagen: 'assets/categorias/pintura.png',
      url: ''
    );
    final cat7 = new CategoriaModel(
      nombre: 'Electricidad',
      imagen: 'assets/categorias/electricidad.png',
      url: ''
    );
    final cat8 = new CategoriaModel(
      nombre: 'Cristaleria',
      imagen: 'assets/categorias/cristaleria.png',
      url: ''
    );
    final cat9 = new CategoriaModel(
      nombre: 'Herrería',
      imagen: 'assets/categorias/herreria.png',
      url: ''
    );

    this._categorias.addAll([
      cat1,
      cat2,
      cat3,
      cat4,
      cat5,
      cat6,
      cat7,
      cat8,
      cat9
    ]);
  }
}