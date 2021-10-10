import 'package:flutter/material.dart';


class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Numero de taps', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
    );

  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30),
        FloatingActionButton(onPressed: _cero, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove)),
        SizedBox(width: 5.0),
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add))
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _cero() {
    setState(() => _conteo = 0);
  }
}