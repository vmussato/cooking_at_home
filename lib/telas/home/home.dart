import 'package:flutter/material.dart';
import '../../modelos/receita.dart';


class Home extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
@override
  Widget build(BuildContext context) {
    return _construirHome();
  }

  Widget _construirHome() {

    return Scaffold(
        body: _construirCard(),
        appBar: _construirAppBar(),
      );
    
  }

  Widget _construirCard() {
    return SizedBox(
          height: 300,
          child: Card(
            margin: EdgeInsets.all(16),
          child: Column(children: [
            Stack(
              children: <Widget>[
                _construirImagemCard(),
                _construirTextoCard()
              ]
            )
          ],)
        )
        );
  }

  Widget _construirTextoCard() {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Text('Bolo de Laranja', style: TextStyle(fontSize: 20))
    );
  }

  Widget _construirImagemCard() {
    return Image.network(
      'https://img.itdg.com.br/tdg/images/recipes/000/110/765/102462/102462_original.jpg', 
      fit: BoxFit.fill, 
      height: 268,
    );
  }

  Widget _construirAppBar() {
    return AppBar(title: Text('Cozinhando em casa'));
  }
}