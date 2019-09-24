import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  final String imageUrl =
      "https://celebritypets.net/wp-content/uploads/2016/12/Adriana-Lima.jpg";

  final List<MenuItem> options = [
    MenuItem(Icons.home, 'Ir a inicio'),
    MenuItem(Icons.favorite_border , 'Contratistas favoritos'),
    MenuItem(Icons.settings , 'Configurar preferencias'),
    MenuItem(Icons.share, 'Ayuda'),
    MenuItem(Icons.bug_report, 'Reportar errores')
  ];

  final List<MenuItem> admin = [
    MenuItem(Icons.account_circle, 'Administrar perfil'),
    MenuItem(Icons.email , 'Mensajes'),
    MenuItem(Icons.insert_chart , 'Estadisticas'),
    MenuItem(Icons.contact_phone, 'Crear tarjeta de presentación')
  ];


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        //on swiping left
        // if (details.delta.dx < -6) {
        //   Provider.of<MenuController>(context, listen: true).toggle();
        // }
      },
      child: Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          )
        ),
        padding: EdgeInsets.only(
          top: 45,
          left: 32,
          bottom: 8,
          right: MediaQuery.of(context).size.width / 5),
        // color: Color(0xff005377),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: new Container(
                    width: 240.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('./assets/logo-light-text.png')
                      )
                    )
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: options.map((item) {
                return ListTile(
                  leading: Icon(
                    item.icon,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    item.title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  ),
                );
              }).toList(),
            ),
            Spacer(),
            Column(
              children: admin.map((item) {
                return ListTile(
                  leading: Icon(
                    item.icon,
                    color: Color(0xffF9D20D),
                    size: 20,
                  ),
                  title: Text(
                    item.title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class MenuItem {
  String title;
  IconData icon;

  MenuItem(this.icon, this.title);
}
