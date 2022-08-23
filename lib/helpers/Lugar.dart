import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class Lugar extends StatefulWidget {
  const Lugar({Key? key}) : super(key: key);

  @override
  State<Lugar> createState() => _LugarState();
}

class _LugarState extends State<Lugar>
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
          Bebidas(),
          Comidas(),
          Entradas(),
        ],
      ),
    );
  }

  Widget Bebidas() {
    return Container(
      alignment: const Alignment(0, 1),
      child: ElevatedButton(
        onPressed: () {},
        child: Image.network('https://pbs.twimg.com/profile_images/1380267041790300166/uXdEuQ_D_400x400.png'),
        style: ElevatedButton.styleFrom(
            primary: Colors.yellow,
            onPrimary: Colors.deepOrangeAccent,
            //padding: EdgeInsets.all(10.0),
            maximumSize: Size(_screenHeight * 0.3, _screenWidth * 0.3)),
      ),
    );
  }

  Widget Comidas() {
    return Container(
      alignment: const Alignment(0, 0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Comidas"),
        style: ElevatedButton.styleFrom(
            primary: Colors.yellow,
            onPrimary: Colors.deepOrangeAccent,
            //padding: EdgeInsets.all(10.0),
            minimumSize: Size(_screenHeight * 0.1, _screenWidth * 0.3)),
      ),
    );
  }

  Widget Entradas() {
    return Container(
      alignment: const Alignment(0, -1),
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Entradas"),
        style: ElevatedButton.styleFrom(
            primary: Colors.yellow,
            onPrimary: Colors.deepOrangeAccent,
            //padding: EdgeInsets.all(10.0),
            minimumSize: Size(_screenHeight * 0.1, _screenWidth * 0.3)),
      ),
    );
  }
}
