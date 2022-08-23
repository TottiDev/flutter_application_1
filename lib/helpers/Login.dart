import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter_application_1/helpers/MyHomePage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>
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
        title: Text("Ingrese su nombre y dirección"),
      ),
      body: Stack(
        children: [
          CajaNombre(),
          CajaDireccion(),
          UsuarioImagen(),
          Siguiente(),
        ],
      ),
    );
  }

  Widget CajaNombre() {
    return Container(
      alignment: const Alignment(0, 0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Nombre'
        ),
      ),
    );
  }

  Widget UsuarioImagen(){
    return Container(
      alignment: const Alignment(-1, -1),
      child: Image.network('https://cdn.dribbble.com/users/235461/screenshots/1992781/media/84f39ef8eaf58fd53abf9da6b7956815.gif'),

    );
  }

  Widget CajaDireccion() {
    return Container(
      alignment: const Alignment(0, 0.3),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Dirección'
        ),
      ),
    );
  }

  Widget Siguiente() {
    return Container(
      alignment: const Alignment(0.9, 0.9),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
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
}
