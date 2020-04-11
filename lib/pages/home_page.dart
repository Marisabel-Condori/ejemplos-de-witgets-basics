import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Titulo'),),
      body: _lista()
      );
  }

  Widget _lista() {
    return ListView(children: _realizarLista());}

  List<Widget> _realizarLista(){
    return [
      ListTile(title: Text('hola mundo')),
      Divider(),
      ListTile(title: Text('hola mundo')),
      Divider(),
      ListTile(title: Text('hola mundo')),
      ListTile(title: Text('hola mundo')),
    ];
  }

}