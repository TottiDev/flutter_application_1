import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter_application_1/helpers/MyHomePage.dart';

class Lugar extends StatefulWidget {
  const Lugar({Key? key}) : super(key: key);

  @override
  State<Lugar> createState() => _LugarState();
}

class _LugarState extends State<Lugar> with SingleTickerProviderStateMixin {
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
        title: Text("Selecciona el lugar"),
      ),
      body: Stack(
        children: [
          Restaurante1(),
          Restaurante2(),
          Restaurante3(),
          Restaurante4(),
        ],
      ),
    );
  }

  Widget Restaurante1() {
    return Container(
      alignment: const Alignment(-0.8, -0.8),
      child: Container(
        //alignment: const Alignment(0, 0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MyHomePage()));
          },
          child: Image.network(
              'https://images.unsplash.com/photo-1541086095944-f4b5412d3666?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
          style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              onPrimary: Colors.deepOrangeAccent,
              //padding: EdgeInsets.all(10.0),
              maximumSize: Size(_screenHeight * 0.3, _screenWidth * 0.3)),
        ),
      ),
    );
  }

  Widget Restaurante2() {
    return Container(
      alignment: const Alignment(0.8, -0.8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        child: Image.network(
            'https://images.unsplash.com/photo-1606021511779-aae22948af3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
        style: ElevatedButton.styleFrom(
            primary: Colors.yellow,
            onPrimary: Colors.deepOrangeAccent,
            //padding: EdgeInsets.all(10.0),
            maximumSize: Size(_screenHeight * 0.3, _screenWidth * 0.3)),
      ),
    );
  }

  Widget Restaurante3() {
    return Container(
      alignment: const Alignment(-0.8, 0.8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        child: Image.network(
            'https://images.unsplash.com/photo-1584536301769-0c5c357941db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
        style: ElevatedButton.styleFrom(
            primary: Colors.yellow,
            onPrimary: Colors.deepOrangeAccent,
            //padding: EdgeInsets.all(10.0),
            maximumSize: Size(_screenHeight * 0.3, _screenWidth * 0.3)),
      ),
    );
  }

  Widget Restaurante4() {
    return Container(
      alignment: const Alignment(0.8, 0.8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        child: Image.network(
            'https://images.unsplash.com/photo-1589459985166-966c72e767d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
        style: ElevatedButton.styleFrom(
            primary: Colors.yellow,
            onPrimary: Colors.deepOrangeAccent,
            //padding: EdgeInsets.all(10.0),
            maximumSize: Size(_screenHeight * 0.3, _screenWidth * 0.3)),
      ),
    );
  }
}
