import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final estilo = TextStyle(fontSize: 20);

  int _contador = 0;

    Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _resetear,),

        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _restar,),

        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _sumar,),
      ],
    );
  }

  void _sumar(){
    setState((){
      _contador++;
    });
  }

  void _restar(){
    setState((){
      _contador--;
    });
  }

  void _resetear(){
    setState((){
      _contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Presiona", style: estilo),
            Text("$_contador", style: estilo)
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }
}