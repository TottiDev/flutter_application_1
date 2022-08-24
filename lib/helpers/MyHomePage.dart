import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter_application_1/helpers/Bebidas.dart';
import 'package:flutter_application_1/helpers/Comidas.dart';
import 'package:flutter_application_1/helpers/Entradas.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _screenHeight = 0.0;
  double _screenWidth = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Selecciona tu pedido"),
      ),
      body: Stack(
        children: [
          Bebidass(),
          Comidass(),
          Entradass(),
        ],
      ),
    );
  }

  Widget Bebidass() {
    return Container(
      alignment: const Alignment(0, 0.8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>  const Bebidas()));
        },
        child: Text("Bebidas"),
        style: ElevatedButton.styleFrom(
            textStyle:
                const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            primary: Colors.yellow,
            onPrimary: Colors.deepOrangeAccent,
            //padding: EdgeInsets.all(10.0),
            minimumSize: Size(_screenHeight * 0.1, _screenWidth * 0.3)),
      ),
    );
  }

  Widget Comidass() {
    return Container(
      alignment: const Alignment(0, 0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>  const Comidas()));
        },
        child: Text("Comidas"),
        style: ElevatedButton.styleFrom(
            textStyle:
                const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            primary: Colors.yellow,
            onPrimary: Colors.deepOrangeAccent,
            //padding: EdgeInsets.all(10.0),
            minimumSize: Size(_screenHeight * 0.1, _screenWidth * 0.3)),
      ),
    );
  }

  Widget Entradass() {
    return Container(
      alignment: const Alignment(0, -0.8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>  const Entradas()));
        },
        child: Text("Entradas"),
        style: ElevatedButton.styleFrom(
            textStyle:
                const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            primary: Colors.yellow,
            onPrimary: Colors.deepOrangeAccent,
            //padding: EdgeInsets.all(10.0),
            minimumSize: Size(_screenHeight * 0.1, _screenWidth * 0.3)),
      ),
    );
  }
}
