import 'package:flutter/material.dart';

class FondoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Positioned(
          left: -( size.width ) * 1.3,
          top: ( size.width ) * 0.4,
          child: Container(
            width: size.height * 1.0,
            height: size.height * 1.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 83, 119, 0.05),
              borderRadius: BorderRadius.circular(2000.0)
            ),
          ),
        )
      ],
    );
  }
}