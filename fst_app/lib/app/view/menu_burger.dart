import 'package:flutter/material.dart';
import 'package:fst_app/app/MyApp.dart';


class MenuBurguer extends StatefulWidget {
  //const MenuBurguer({ Key? key }) : super(key: key);

  @override
  _MenuBurguerState createState() => _MenuBurguerState();
}

class _MenuBurguerState extends State<MenuBurguer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardápio'),
        actions:[
          IconButton(
            icon: Icon(Icons.add), 
              onPressed:(){
                Navigator.of(context).pushNamed(MyApp.BURGUER_FORM);
              },
          )
        ],
        ),
      body: ListView(),
    );
  }
}