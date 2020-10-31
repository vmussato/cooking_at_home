import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _construirAppBar();
  }

  Widget _construirAppBar() {
    return AppBar(title: Text('Cozinhando em casa'));
  }
}