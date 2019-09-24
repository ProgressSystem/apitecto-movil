import 'package:appitectoapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appitectoapp/providers/categoria_provider.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildCloneableWidget>[
        ChangeNotifierProvider(builder: (context) => CategoriaProvider(),)
      ],
      child: MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.lightBlue
        ),
        home: new HomePage(),
      )
    );
  }
}