import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        body: SizedBox(
          height: 300,
          child: Card(
          child: Column(children: [
            Image.network('https://img.itdg.com.br/tdg/images/recipes/000/110/765/102462/102462_original.jpg?mode=crop&width=710&height=400'),
            Text('Bolo de Laranja')
          ],)
        )
        ),
        appBar: AppBar(title: Text('Cozinhando em casa')),
      )
    );
  }
}