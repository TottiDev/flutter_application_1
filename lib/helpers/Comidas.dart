import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter_application_1/helpers/MyHomePage.dart';
import 'package:flutter_application_1/helpers/Gracias.dart';


class Comidas extends StatefulWidget {
  const Comidas({Key? key}) : super(key: key);

  @override
  State<Comidas> createState() => _ComidasState();
}

class _ComidasState extends State<Comidas>
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
          ComidasRow(),
          Siguiente(),
        ],
      ),
    );
  }

  Widget Siguiente() {
    return Container(
      alignment: const Alignment(0.9, 0.9),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Gracias()));
        },
        child: Text("Siguiente"),
        style: ElevatedButton.styleFrom(
            primary: Colors.green,
            onPrimary: Color.fromARGB(255, 255, 255, 255),
            padding: EdgeInsets.all(10.0),
            minimumSize: Size(_screenHeight * 0.15, _screenWidth * 0.2)),
      ),
    );
  }

  Widget ComidasRow() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.green),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Comida 1",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.green),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Comida 2",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.green),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Comida 3",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.green),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Comida 4",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.green),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Comida 5",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.green),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Comida 6",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ), // Column
    );
  }
}
