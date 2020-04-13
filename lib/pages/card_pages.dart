import 'package:flutter/material.dart';

class CardPages extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(children: <Widget>[
        _tarjeta1(),
      ],),
    );
  }

  Widget _tarjeta1() {
  return Card(child: Column(
    children: <Widget>[
      ListTile(leading: Icon(Icons.android), title: Text('TITULO'),subtitle: Text('aqui esta la descripicion'),),
      Row( mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[FlatButton(onPressed: (){}, child: Text('Cancelar'),),
                            FlatButton(onPressed: (){}, child: Text('Ok'))],)
    ],
  ));
  }
}