import 'package:componentes/provider/menu_provider.dart';
import 'package:flutter/cupertino.dart';
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
    return FutureBuilder(future: menuProvider.cargarData(),
    builder: (context, AsyncSnapshot<List<dynamic>>snapshot){
      return ListView(
        children: _realizarLista(snapshot.data),
      );
    },
    );
  }

  List<Widget> _realizarLista(List<dynamic>data){
    final List<Widget>opciones = [];
    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.account_circle, color: Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color:Colors.blue),
        onTap: (){},
      );
      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
  }
}