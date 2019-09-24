import 'package:flutter/material.dart';

import 'package:appitectoapp/menu_page.dart';
import 'package:appitectoapp/menu_list.dart';
import 'package:appitectoapp/widgets/fondo_app.dart';
import 'package:appitectoapp/widgets/slide_vertical.dart';
// import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: MenuBar(),
      drawer: new MenuScreen(),
      body: new Stack(
        children: <Widget>[
          FondoApp(),
          SlideVertical(),
          ListDestacadosPago()
        ],
      )
    );
  }
}

class ListDestacadosPago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 230.0,
      ),
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.ac_unit),
          )
        ],
      )
    );
  }
}

