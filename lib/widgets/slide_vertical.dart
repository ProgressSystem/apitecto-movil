import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:appitectoapp/models/categoria_model.dart';
import 'package:appitectoapp/providers/categoria_provider.dart';

class SlideVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categorias = Provider.of<CategoriaProvider>(context);

    return Container(
      height: 260,
      width: double.infinity,
      child: new CarouselSlider(
        items: categorias.categorias.map( (prod) => _Card(prod)).toList(),
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 2000),
        pauseAutoPlayOnTouch: Duration(seconds: 2),
        viewportFraction: 0.55,
      )
    );
  }
}

class _Card extends StatelessWidget {

  CategoriaModel cat;
  _Card(this.cat);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          _TarjetaCategoria(this.cat)
        ]
      ),
    );
  }
}

class _TarjetaCategoria extends StatelessWidget {

  CategoriaModel cat;
  _TarjetaCategoria(this.cat);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: NetworkImage(cat.imagen),
              image: AssetImage(cat.imagen),
              fit: BoxFit.cover,
            ),
          ),
          width: size.width * 0.45,
          height: size.height * 0.27,
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0,),
              Center(
                child: Text(
                  cat.nombre.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold)
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Text('Ver más', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                    ),
                    width: size.width * 0.25,
                    height: 35.0,
                    decoration: BoxDecoration(
                      color: Color(0xff005377),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}