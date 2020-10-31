import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _construirDetalhes();
  }

  Widget _construirDetalhes() {
    return Scaffold(
      body: Column(
        children: [
          _construirImagemDetalhes('assets/images/ratatouille.jpg'),
          _construirTituloDetalhes('Ratatouille'),
          _construirLinhaIconesDetalhes('2-3 porções' ,'50min'),
          _construirSubtituloDetalhes('Ingredientes'),
          _construirTextoDetalhes('Aqui serão exibidos os ingredientes'),
          _construirSubtituloDetalhes('Modo de Preparo'),
          _construirTextoDetalhes('Aqui será exibido o modo de preparo')

        ],),
      appBar: _construirAppBar()
    );
  }

  Widget _construirTituloDetalhes(titulo) {
    return Text(titulo, style: TextStyle(
      color: Colors.deepOrange, fontSize: 30
    ),
    );
  }

  Widget _construirImagemDetalhes(imagem) {
    return Image.asset(imagem);
  }

  Widget _construirLinhaIconesDetalhes(rendimento, tempo_preparo) {
    return Row(
      children: <Widget> [
        _construirColunaIconeDetalhes(Icons.restaurant, rendimento),
        _construirColunaIconeDetalhes(Icons.timer, tempo_preparo),
      ],
    );
  }

  Widget _construirColunaIconeDetalhes(icone, texto) {
      return Expanded(
        child: Column(children: <Widget>[
        Icon(icone, color: Colors.deepOrange),
        Text(texto, style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold)),
      ],
      )
    );
  }

  Widget _construirSubtituloDetalhes(subtitulo) {
    return Text(subtitulo, style: TextStyle(
      fontSize: 20
      ));
  }

  Widget _construirTextoDetalhes(texto) {
    return Text(texto);
  }

  Widget _construirAppBar() {
    return AppBar(title: Text('Cozinhando em casa'));
  }
}