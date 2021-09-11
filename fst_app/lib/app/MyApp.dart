import 'package:flutter/material.dart';

import 'view/burguer_form.dart';
import 'view/menu_burger.dart';




class MyApp extends StatelessWidget {
  
  static const HOME = '/';
  static const BURGUER_FORM = 'burguer-form';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      routes: {
        HOME: (context) => MenuBurguer(),
        BURGUER_FORM:(context) => BurguerForm()
      },
    );
  }
}