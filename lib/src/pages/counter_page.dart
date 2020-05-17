import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State <CounterPage> {
  int _counter = 0;
  TextStyle _estilosFuentes = new TextStyle(fontSize:25.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tsitulo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de taps", style: _estilosFuentes,),
            Text('$_counter', style: _estilosFuentes,),
          ],
          ),
        ),
        floatingActionButton: _createButton(),
    );
  } 

  Widget _createButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(
          onPressed: _remove,
          child: Icon(Icons.exposure_zero),
          backgroundColor: Colors.black,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _rest,
          child: Icon(Icons.remove),
          backgroundColor: Colors.yellow,
        ),
        SizedBox(width: 5,),
        FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add),
          backgroundColor: Colors.pink,
        )
      ],
    );
  }

  void _add(){
    setState(() {
      _counter++;  
    });
  }

  void _rest(){
    setState(() {
      _counter--;  
    });
  }

  void _remove(){
    setState(() {
      _counter = 0;  
    });
  }
}