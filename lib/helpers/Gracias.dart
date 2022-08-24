import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter_application_1/helpers/Lugar.dart';
import 'package:flutter_application_1/helpers/MyHomePage.dart';

class Gracias extends StatefulWidget {
  const Gracias({Key? key}) : super(key: key);

  @override
  State<Gracias> createState() => _GraciasState();
}

class _GraciasState extends State<Gracias> with SingleTickerProviderStateMixin {
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
      body: Stack(
        children: [
          GraciasImagen(),
          TextoGracias(),
        ],
      ),
    );
  }

  Widget GraciasImagen() {
    return Container(
      alignment: const Alignment(-1, -1),
      child: Image.network(
          'https://c.tenor.com/BSY1qTH8g-oAAAAC/check.gif'),
    );
  }

  Widget TextoGracias() {
    return Container(
      alignment: const Alignment(0, 0.6),
      child: RichText(
        text: TextSpan(
          text: 'Tu pedido',
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan( text: ' está', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan( text: ' en camino'),
          ],
        ),
      )
    );
  }
}
